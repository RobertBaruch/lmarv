#!/usr/bin/env python3
"""This is used for one tester to test another tester."""

import unittest

import alu
import bit_pattern
import tester_v2
import time
import utils


def testing_bits(u, port):
  if u == 1:
    if port == 4:
      return [0, 1, 2, 3, 4, 5]
  elif u == 2:
    if port == 2:
      return [0, 1, 2, 3, 4, 5]
    elif port == 4:
      return [0, 1, 2, 3, 5]
  elif u == 3:
    if port == 4:
      return [0, 1, 2, 3, 4, 5]
  elif u == 4:
    if port == 4:
      return [0, 1, 2, 3, 4]
  return [0, 1, 2, 3, 4, 5, 6, 7]

def testing_bits_mask():
  bits = [0x00] * 20
  for u in [1, 2, 3, 4]:
    for port in [0, 1, 2, 3, 4]:
      for bit in testing_bits(u, port):
        bits[u_port_to_byte_index(u, port)] |= (1 << bit)
  return bits

def u_port_to_byte_index(u, port):
  return port + (u - 1) * 5

def generator():
  for u in [1, 2, 3, 4]:
    for port in [0, 1, 2, 3, 4]:
      for bit in testing_bits(u, port):
        bits = [0x00] * 20
        bits[u_port_to_byte_index(u, port)] = (1 << bit)
        yield bits

def format_bits(bits):
  str = ''
  for u in [1, 2, 3, 4]:
    for port in [0, 1, 2, 3, 4]:
      str += "U{}.IO{}: {:08b} ".format(u, port, bits[u_port_to_byte_index(u, port)])
    str += "\n"
  str += "        11               22111111         33332222\n"
  str += "        20987543         10976543         53216542\n"
  return str

def format_bits_bytes(bits):
  str = ''
  for u in [1, 2, 3, 4]:
    str += "U{}[".format(u)
    for port in [0, 1, 2, 3, 4]:
      str += "{:02x}".format(bits[u_port_to_byte_index(u, port)])
    str += "]"
  return str

class Output(tester_v2.TesterV2):
  def __init__(self, serial_no):
    super().__init__(serial_no)

    self.i2c_by_u = {
      1: self.i2c0_,
      2: self.i2c1_,
      3: self.i2c2_,
      4: self.i2c3_
    }
    self.reg_by_port = {
      0: self.REG_OP0,
      1: self.REG_OP1,
      2: self.REG_OP2,
      3: self.REG_OP3,
      4: self.REG_OP4
    }
    self.Reset()

    # Set all pins as output
    for i2c in [self.i2c0_, self.i2c1_, self.i2c2_, self.i2c3_]:
      for reg in [self.REG_IOC0, self.REG_IOC1, self.REG_IOC2, self.REG_IOC3, self.REG_IOC4]:
        i2c.write8(reg, 0x00)  # 0 for output

  def output(self, bits):
    self.OutputEnable(False)
    time.sleep(0.001)

    for u in [1, 2, 3, 4]:
      for port in [0, 1, 2, 3, 4]:
        i2c = self.i2c_by_u[u]
        reg = self.reg_by_port[port]
        i2c.write8(reg, bits[u_port_to_byte_index(u, port)])

    time.sleep(0.001)
    self.OutputEnable(True)


class Input(tester_v2.TesterV2):
  def __init__(self, serial_no):
    super().__init__(serial_no)

    self.i2c_by_u = {
      1: self.i2c0_,
      2: self.i2c1_,
      3: self.i2c2_,
      4: self.i2c3_
    }
    self.reg_by_port = {
      0: self.REG_IP0,
      1: self.REG_IP1,
      2: self.REG_IP2,
      3: self.REG_IP3,
      4: self.REG_IP4
    }

    self.Reset()
    # After Reset, all pins are input.

  def input(self):
    bits = [0x00] * 20
    for u in [1, 2, 3, 4]:
      for port in [0, 1, 2, 3, 4]:
        i2c = self.i2c_by_u[u]
        reg = self.reg_by_port[port]
        bits[u_port_to_byte_index(u, port)] = i2c.readU8(reg)
    return bits


class TestPassthru(unittest.TestCase):

  def setUp(self):
    serial1 = 'FT2DG827'
    serial2 = 'FT2EX3HT'
    self.out_ = Output(serial_no=serial2)
    self.in_ = Input(serial_no=serial1)
    self.bitmask = testing_bits_mask()

  def test_equal(self):
    for pattern in generator():
      time.sleep(0.1)
      print('Testing {} ...'.format(format_bits_bytes(pattern)))
      self.out_.output(pattern)
      time.sleep(0.001)
      actual = self.in_.input()
      for i in range(len(pattern)):
        actual[i] &= self.bitmask[i]
      print('Respond {}'.format(format_bits_bytes(actual)))
      for i in range(len(pattern)):
        if pattern[i] != actual[i]:
          print(("FAIL: expected \n{}\n" +
                 "      actual   \n{}\n").format(format_bits(pattern), format_bits(actual)))
          break


if __name__ == '__main__':
    unittest.main()
