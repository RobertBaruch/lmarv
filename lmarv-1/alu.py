import binascii

# A[3:0] = X (rs1)
# A[7:4] = Y (rs2/imm)
# A[8] = Cin
# A[11:9] = F

# F:
# 000: ADD
# 001: SUB (X - Y)
# 010: SLT (X < Y signed)
# 011: SLTU (X < Y unsigned)
# 100: XOR
# 110: OR
# 111: AND

# D[3:0] = Z
# D[4] = Cout
# D[5] = propagate
# D[6] = generate
# D[7] = lessthan

F_ADD  = 0b000
F_SUB  = 0b001
F_SLT  = 0b010
F_SLTU = 0b011
F_XOR  = 0b100
F_RSVD = 0b101
F_OR   = 0b110
F_AND  = 0b111

class Alu(object):
  def __init__(self):
    self.data = bytearray(8 * 2 * 16 * 16)

    addr = 0
    for f in range(8):
      for cin in range(2):
        for y in range(16):
          for x in range(16):
            z, cout, propagate, generate, lessthan = self.compute(x, y, cin, f)
            data = ((z & 0b1111) |
              (cout << 4) |
              (propagate << 5) |
              (generate << 6) |
              (lessthan << 7))
            self.data[addr] = data
            addr += 1

  def lookup(self, x, y, cin, f):
    addr = x | (y << 4) | (cin << 8) | (f << 9)
    data = self.data[addr]
    z = data & 0b1111
    cout = (data &        0b10000) >> 4
    propagate = (data &  0b100000) >> 5
    generate = (data &  0b1000000) >> 6
    lessthan = (data & 0b10000000) >> 7
    return (z, cout, propagate, generate, lessthan)

  def write(self, fname):
    with open("alu.bin", "wb") as f:
      f.write(self.data)

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
  alu1 = Alu()
  alu2 = Alu()

  cin = 0
  for x in range(256):
    for y in range(256):
      zlow, cout1, p, g, l1 = alu1.compute(x & 0xF, y & 0xF, cin, F_ADD)
      assert cout1 == g | (p & cin)
      zhi, cout2, p2, g2, l2 = alu2.compute(x >> 4, y >> 4, cout1, F_ADD)
      assert cout2 == g2 | (p2 & cout1)
      assert x + y == zlow | (zhi << 4) | (cout2 << 8), (
        "ADD error: x={:02X} y={:02X} x+y={:03X} cout2={:01b} z={:01X}{:01X}".format(
          x, y, x+y, cout2, zhi, zlow))

  cin = 1
  for x in range(256):
    for y in range(256):
      zlow, cout1, p, g, l1 = alu1.compute(x & 0xF, y & 0xF, cin, F_SUB)
      assert cout1 == g | (p & cin)
      zhi, cout2, p2, g2, l2 = alu2.compute(x >> 4, y >> 4, cout1, F_SUB)
      assert cout2 == g2 | (p2 & cout1)
      assert (x - y) & 0xFF == zlow | (zhi << 4), (
        "SUB error: x={:02X} y={:02X} x-y={:03X} cout2={:01b} z={:01X}{:01X}".format(
          x, y, x-y, cout2, zhi, zlow))

  for x in range(256):
    for y in range(256):
      zlow, cout1, p, g, l1 = alu1.compute(x & 0xF, y & 0xF, cin, F_SLTU)
      assert cout1 == g | (p & cin)
      zhi, cout2, p2, g2, l2 = alu2.compute(x >> 4, y >> 4, cout1, F_SLTU)
      assert cout2 == g2 | (p2 & cout1)
      assert int(x < y) == l2, (
        "SLTU error: x={:02X} y={:02X} x<y={:01b}, l2={:01b}".format(
          x, y, int(x<y), l2))

  for x in range(-0x80, 0x7F):
    for y in range(-0x80, 0x7F):
      zlow, cout1, p, g, l1 = alu1.compute(x & 0xF, y & 0xF, cin, F_SLT)
      assert cout1 == g | (p & cin)
      zhi, cout2, p2, g2, l2 = alu2.compute((x & 0xFF) >> 4, (y & 0xFF) >> 4, cout1, F_SLT)
      assert cout2 == g2 | (p2 & cout1)
      assert int(x < y) == l2, (
        "SLT error: x={:02X} y={:02X} x<y={:01b}, l2={:01b}".format(
          x, y, int(x<y), l2))

  for f in range(8):
    for cin in range(2):
      for y in range(16):
        for x in range(16):
          assert alu1.compute(x, y, cin, f) == alu1.lookup(x, y, cin, f), (
            "data error: x={:04b} y={:04b} cin={:01b} f={:01b}".format(
              x, y, cin, f))
  alu1.write("alu.bin")


if __name__ == "__main__":
  main()
