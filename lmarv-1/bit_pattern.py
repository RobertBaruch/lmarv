#!/usr/bin/env python3

import itertools

# Yield all zeroes and all ones.
# To detect shortage to ground or Vcc.
def all_zeroes_and_all_ones():
  yield 0x00000000
  yield 0xFFFFFFFF

# Assert 1-bit at a time. From the lowest bit.
# To detect inter-connect in circuit.
#
#   0x00000001
#   0x00000002
#   ...
#   0x80000000
#
def bit_by_bit():
  n = 1
  for i in range(32):
    yield n
    n = n << 1

# Deassert 1-bit at a time. From the lowest bit.
# To ensure there is no current leakage among bits.
#
#   0xFFFFFFFE
#   0xFFFFFFFD
#   ...
#   0x7FFFFFFF
#
def bit_by_bit_not():
  for i in bit_by_bit():
    yield i ^ 0xFFFFFFFF

# Combine all of them.
def bit_pattern():
  return itertools.chain(
    bit_by_bit(),
    all_zeroes_and_all_ones(),
    bit_by_bit_not(),
  )


def main():
  # Dump all patterns.
  for i in bit_pattern():
    print('0x{:08x}'.format(i))

if __name__ == "__main__":
    main()
