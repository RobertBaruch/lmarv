#!/usr/bin/env python3

def to_bin(num, sep='_', bits=32):
  # Return the num in binary form.
  ret = ''
  while bits > 0:
    bits -= 1
    if num & (1 << bits):
      ret += '1'
    else:
      ret += '0'

    if bits and (bits % 8) == 0:
      ret += sep

  return ret


def main():
  print(to_bin(0))
  print(to_bin(0x203))

if __name__ == "__main__":
    main()
