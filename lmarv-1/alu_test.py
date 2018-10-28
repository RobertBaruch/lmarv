#!/usr/bin/env python3

import unittest

import alu
import bit_pattern
import utils

def generator(fn):
  for r0 in bit_pattern.bit_pattern():
    for r1 in bit_pattern.bit_pattern():
      yield (r0, r1, fn)

class TestAlu(unittest.TestCase):

  def setUp(self):
    self.alu0_ = alu.Alu()
    self.alu0_.copy_roms_()
    self.alu0_.booted = True

    self.alu1_ = alu.Alu()  # TODO: replace with real ALU
    self.alu1_.copy_roms_()
    self.alu1_.booted = True

  def runner(self, gen):
    for s0, s1, fn in gen:
      print('[{0:d}] {1:08x}    {2:08x}'.format(fn, s0, s1))
      res0 = self.alu0_.evaluate(s0, s1, fn)
      res1 = self.alu1_.evaluate(s0, s1, fn)
      self.assertEqual(res0, res1,
          ('\nfn:[{fn:x}] s0:[0x{s0:08x}] ({s0b})      s1:[0x{s1:08x}] ({s1b})\n' +
           ' Emulator:[0x{res0:08x}] ({res0b}) != Real:[0x{res1:08x}] ({res1b})').format(
              fn=fn, s0=s0, s0b=utils.to_bin(s0), s1=s1, s1b=utils.to_bin(s1),
              res0=res0, res0b=utils.to_bin(res0), res1=res1, res1b=utils.to_bin(res1))
      )

  def test_add(self):
    self.runner(generator(alu.F_ADD))


if __name__ == '__main__':
    unittest.main()
