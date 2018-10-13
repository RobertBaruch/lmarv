import binascii

# X = the value on the rs1 bus
# Y = the value on the rs2 bus
# Z = F(X, Y) = the value on the rd bus

# F (corresponds to bit 5 of funct7 and all bits of funct3)
# 0000: ADD (X + Y)
# 1000: SUB (X - Y)
# 0010: SLT (X < Y signed ? 1 : 0)
# 0011: SLTU (X < Y unsigned ? 1 : 0)
# 0100: XOR (X ^ Y)
# 0110: OR (X | Y)
# 0111: AND (X & Y)
# all others reserved

F_ADD  = 0b0000
F_SUB  = 0b1000
F_SLT  = 0b0010
F_SLTU = 0b0011
F_XOR  = 0b0100
F_OR   = 0b0110
F_AND  = 0b0111

def bin_to_int(b):
  '''Converts a list of binary integers, where b[i] is bit i, to an integer.
  '''
  n = 0
  for i in range(len(b)):
    n = (n << 1) | b[len(b) - 1 - i]
  return n

class Alu(object):
  def __init__(self):
    self.propagage_generate_rom = bytearray(2**13)
    self.carry_lookahead_rom = bytearray(2**15)
    self.bitslice_rom = bytearray(2**13)

    for f in range(16):
      for y in range(16):
        for x in range(16):
            cin = 0
            z, cout, propagate, generate, lessthan = self.compute(x, y, cin, f)
            pg_rom_data = generate | (propagate << 1)
            pg_rom_addr = x | (y << 4) | (f << 8)
            self.propagage_generate_rom[pg_rom_addr] = pg_rom_data

    for f in range(16):
      for y in range(16):
        for x in range(16):
          for cin in range(2):
              z, cout, propagate, generate, lessthan = self.compute(x, y, cin, f)
              bitslice_rom_data = z | (lessthan << 4)
              bitslice_rom_addr = x | (y << 4) | (f << 8) | (cin << 12)
              self.bitslice_rom[bitslice_rom_addr] = bitslice_rom_data

    self.bits = [0] * 2**7
    for n in range(2**7):
      self.bits[n] = tuple((n & (1 << i)) >> i for i in range(7))

    c = [0] * 8
    for c[0] in range(2):
      for gn in range(2**7):
        g = self.bits[gn]
        for pn in range(2**7):
          p = self.bits[pn]
          for i in range(7):
            c[i + 1] = (c[i] & p[i]) | g[i]
          carry_lookahead_rom_data = bin_to_int([c[1], c[2], c[3], c[4], c[5], c[6], c[7]])
          carry_lookahead_rom_addr = bin_to_int([c[0], g[0], p[0], g[1], p[1], g[2], p[2], g[3], p[3], g[4], p[4], g[5], p[5], g[6], p[6]])
          self.carry_lookahead_rom[carry_lookahead_rom_addr] = carry_lookahead_rom_data

  def evaluate(self, x, y, f):
    rdb = 0

    c = [0] * 8

    # set cin according to F
    c[0] = 0
    if f == F_SUB or f == F_SLT or f == F_SLTU:
      c[0] = 1

    # propagate/generate
    g = [0] * 7
    p = [0] * 7
    for i in range(7):
      rs1b = (x & (0b1111 << (i * 4))) >> (i * 4)
      rs2b = (y & (0b1111 << (i * 4))) >> (i * 4)
      pg_rom_addr = rs1b | (rs2b << 4) | (f << 8)
      pg_rom_data = self.propagage_generate_rom[pg_rom_addr]
      data = self.bits[pg_rom_data]
      g[i] = data[0]
      p[i] = data[1]

    # carry lookahead
    carry_lookahead_rom_addr = bin_to_int([c[0], g[0], p[0], g[1], p[1], g[2], p[2], g[3], p[3], g[4], p[4], g[5], p[5], g[6], p[6]])
    carry_lookahead_rom_data = self.carry_lookahead_rom[carry_lookahead_rom_addr]
    data = self.bits[carry_lookahead_rom_data]
    for i in range(7):
      c[i + 1] = data[i]

    # bitslice
    for i in range(8):
      rs1b = (x & (0b1111 << (i * 4))) >> (i * 4)
      rs2b = (y & (0b1111 << (i * 4))) >> (i * 4)
      bitslice_rom_addr = rs1b | (rs2b << 4) | (f << 8) | (c[i] << 12)
      bitslice_rom_data = self.bitslice_rom[bitslice_rom_addr]
      data = self.bits[bitslice_rom_data]
      rdb |= (bitslice_rom_data & 0b1111) << (i * 4)
      lt = data[4]

    # final less-than fixup
    if (rdb & 0b1) | lt == 0b1:
      rdb |= 0b1
    return rdb    

  def write(self, fname):
    with open("alu_pg_rom.bin", "wb") as f:
      f.write(self.propagage_generate_rom)
    with open("alu_bitslice_rom.bin", "wb") as f:
      f.write(self.bitslice_rom)
    with open("alu_clu_rom.bin", "wb") as f:
      f.write(self.carry_lookahead_rom)

  def compute(self, x, y, cin, f):
    cout = 0
    propagate = 0
    generate = 0
    lessthan = 0
    z = 0

    if f == F_ADD:
      z = x + y + cin
      cout = (z & 0b10000) >> 4
      if x + y > 15:
        propagate = 0
        generate = 1
      elif x + y == 15:
        propagate = 1
        generate = 0
      else:
        propagate = 0
        generate = 0
    elif f == F_SUB:
      yc = y ^ 0b1111
      z = x + yc + cin
      cout = (z & 0b10000) >> 4
      if x + yc > 15:
        propagate = 0
        generate = 1
      elif x + yc == 15:
        propagate = 1
        generate = 0
      else:
        propagate = 0
        generate = 0
    elif f == F_SLTU:
      yc = y ^ 0b1111
      z = x + yc + cin
      cout = (z & 0b10000) >> 4
      z = 0
      if not cout:
        lessthan = 1
      if x + yc > 15:
        propagate = 0
        generate = 1
      elif x + yc == 15:
        propagate = 1
        generate = 0
      else:
        propagate = 0
        generate = 0
    elif f == F_SLT:
      yc = y ^ 0b1111
      z = x + yc + cin
      cout = (z & 0b10000) >> 4
      xsign = (x & 0b1000) >> 3
      ysign = (yc & 0b1000) >> 3
      zsign = (z & 0b1000) >> 3
      z = 0
      overflow = (xsign & ysign & ~zsign) | (~xsign & ~ysign & zsign)
      lessthan = (zsign & ~overflow) | (~zsign & overflow)
      if x + yc > 15:
        propagate = 0
        generate = 1
      elif x + yc == 15:
        propagate = 1
        generate = 0
      else:
        propagate = 0
        generate = 0
    elif f == F_OR:
      z = x | y
    elif f == F_AND:
      z = x & y
    elif f == F_XOR:
      z = x ^ y

    return (z & 0b1111, cout, propagate, generate, lessthan)


def main():
  alu = Alu()
  rd = alu.evaluate(0, 1, F_SUB)
  srd = rd
  if (srd >> 31) == 1:
    srd = -((2**32 - rd) & (2**32 - 1))
  print("0b{0:032b} = 0x{0:08x}, unsigned {0:d}, signed {1:d}".format(rd, srd))


if __name__ == "__main__":
  main()
