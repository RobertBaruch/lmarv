#!/usr/bin/env python3

import utils

class TestRunner(object):

  def __init__(self, alu0, alu1, test_data):
    # Constructor:
    #
    # Args:
    #   alu0, alu1: Alu instances.
    #   test_data: generator instance for source registers and func.
    self.alu0_ = alu0
    self.alu1_ = alu1
    self.test_data_ = test_data

  def Run(self):
    for fn, s0, s1 in self.test_data_:
      print('[{0:d}] {1:08x}    {2:08x}'.format(fn, s0, s1))
      res0 = self.alu0_.evaluate(s0, s1, fn)
      res1 = self.alu1_.evaluate(s0, s1, fn)
      if res0 != res1:
        print('    {0:08x} != {1:08x}  {2:s} != {3:s}'.format(
              res0, res1, utils.to_bin(res0), utils.to_bin(res1))


def main():
  # Quick test ...
  class Alu0(object):
    def evaluate(self, s0, s1, fn):
      return s0 ^ s1
  
  class Alu1(object):
    def evaluate(self, s0, s1, fn):
      return s0 + s1
  
  runner = TestRunner(Alu0(), Alu1(), [
      (0, 0x00000000, 0x00000000),
      (0, 0x00000000, 0x00000001),
      (0, 0x00000001, 0x00000000),
      (0, 0x00000001, 0x00000001),  # Expect not match
  ])
  runner.Run()

if __name__ == "__main__":
    main()
