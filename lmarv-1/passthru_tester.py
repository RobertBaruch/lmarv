#!/usr/bin/env python3
"""This is used for one tester to test another tester."""

import unittest

import alu
import bit_pattern
import tester_v2
import utils


def generator():
  for reg in bit_pattern.bit_pattern():
    yield reg

class Output(tester_v2.TesterV2):
  def __init__(self, serial_no):
    super().__init__(serial_no)

    # Set all pins as output
    for i2c in [self.i2c0_, self.i2c1_, self.i2c2_, self.i2c3_]:
      for reg in [self.REG_IOC0, self.REG_IOC1, self.REG_IOC2, self.REG_IOC3, self.REG_IOC4]:
        i2c.write8(reg, 0x00)  # 0 for output

  def output(self, pattern):
    # Duplicate the 32-bit pattern to ALL ports.

    self.OutputEnable(False)

    for reg in [self.REG_OP0, self.REG_OP1, self.REG_OP2, self.REG_OP3, self.REG_OP4]:
      self.i2c0_.write8(reg, (pattern >> 24) & 0xff)
      self.i2c1_.write8(reg, (pattern >> 16) & 0xff)
      self.i2c2_.write8(reg, (pattern >>  8) & 0xff)
      self.i2c3_.write8(reg, (pattern >>  0) & 0xff)

    self.OutputEnable(True)


class Input(tester_v2.TesterV2):
  def __init__(self, serial_no):
    super().__init__(serial_no)

    self.Reset()
    # After Reset, all pins are input.

  def input(self):
    return [(
      (self.i2c0_.readU8(ip) << 24) |
      (self.i2c1_.readU8(ip) << 16) |
      (self.i2c2_.readU8(ip) <<  8) |
      (self.i2c3_.readU8(ip) <<  0))
      for ip in [self.REG_IP0, self.REG_IP1, self.REG_IP2, self.REG_IP3, self.REG_IP4]
    ]


class TestPassthru(unittest.TestCase):

  def setUp(self):
    self.out_ = Output(serial_no='FT2DG827')
    self.in_ = Input(serial_no='FT2EX3HT')

  def test_equal(self):
    for pattern in generator():
      print('Testing [{0:08x}] ...'.format(pattern))
      self.out_.output(pattern)
      expected = [
          pattern,                # All IO0s
          pattern,                # All IO1s
          pattern & ~0x00c00000,  # All IO2s except bit 7:6 of i2c1
          pattern,                # All IO3s
          pattern & ~0xc0d0c0e0,  # All IO4s except bit7:6 of i2c0, bit 7,6,4 of i2c1,
                                  #                 bit 7:6 of i2c2, bit 7:5 of i2c3.
      ]

      actual = self.in_.input()

      for i in range(len(expected)):
        self.assertEqual(expected[i], actual[i],
                         ('\n[IO{i}] expected:[0x{exp:08x}]({expb})' +
                          ' actual:[0x{act:08x}]({actb})').format(i=i,
                             exp=expected[i], expb=utils.to_bin(expected[i]),
                             act=actual[i], actb=utils.to_bin(actual[i])))


if __name__ == '__main__':
    unittest.main()
