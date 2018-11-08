#!/usr/bin/env python3
#
# Talk to a FT232H i2c function to feed bits to ALU.
#
# To install the Adafruit library:
#   https://github.com/adafruit/Adafruit_Python_GPIO
#
# The i2c library doc:
#   https://learn.adafruit.com/adafruit-ft232h-breakout/i2c
#
import time
import Adafruit_GPIO as GPIO
import Adafruit_GPIO.FT232H as FT232H

class TesterV2(object):
  OUTPUT_ENABLE_PIN = 8  # Pin C0. Low-active.
  RESET_PIN = 9           # Pin C1. Low-active.

  # PCA9698 registers
  REG_IP0 = 0x00
  REG_IP1 = 0x01
  REG_IP2 = 0x02
  REG_IP3 = 0x03
  REG_IP4 = 0x04
  REG_OP0 = 0x08
  REG_OP1 = 0x09
  REG_OP2 = 0x0a
  REG_OP3 = 0x0b
  REG_OP4 = 0x0c
  REG_IOC0 = 0x18
  REG_IOC1 = 0x19
  REG_IOC2 = 0x1a
  REG_IOC3 = 0x1b
  REG_IOC4 = 0x1c

  def __init__(self):
    # Temporarily disable FTDI serial drivers.
    FT232H.use_FT232H()

    # Find the first FT232H device.
    self.ft232h_ = FT232H.FT232H()

    # GPIO pin assignment.
    self.ft232h_.setup(self.OUTPUT_ENABLE_PIN, GPIO.OUT)  # Make pin C0 a digital output.

    # Create I2C devices for PCA9698.
    self.i2c0_ = FT232H.I2CDevice(self.ft232h_, 0x20)
    self.i2c1_ = FT232H.I2CDevice(self.ft232h_, 0x21)
    self.i2c2_ = FT232H.I2CDevice(self.ft232h_, 0x22)
    self.i2c3_ = FT232H.I2CDevice(self.ft232h_, 0x23)
    self.i2c_ = [self.i2c0_, self.i2c1_, self.i2c2_, self.i2c3_]

    self.booted = False

    self.Reset()

    # Set output pins
    self.i2c0_.write8(self.REG_IOC0, 0x00)  # rs1[7:0]
    self.i2c0_.write8(self.REG_IOC1, 0x00)  # rs1[15:8]
    self.i2c2_.write8(self.REG_IOC0, 0x00)  # rs1[23:16]
    self.i2c2_.write8(self.REG_IOC1, 0x00)  # rs1[31:24]
    self.i2c1_.write8(self.REG_IOC0, 0x00)  # rs2[7:0]
    self.i2c1_.write8(self.REG_IOC1, 0x00)  # rs2[15:8]
    self.i2c3_.write8(self.REG_IOC0, 0x00)  # rs2[23:16]
    self.i2c3_.write8(self.REG_IOC1, 0x00)  # rs2[31:24]

    # Set function pins.
    self.i2c1_.write8(self.REG_IOC4, 0xf0)  # f[3:0]

    # TODO: Shall we set BOOT_*, rs1a, rs2a, and rda?

    # Rest of all pins are input after reset.

  def Reset(self):
    self.ft232h_.output(self.RESET_PIN, GPIO.HIGH)
    time.sleep(0.000001)  # 1us should be long enough
    self.ft232h_.output(self.RESET_PIN, GPIO.LOW)
    time.sleep(0.000001)  # 1us should be long enough
    self.ft232h_.output(self.RESET_PIN, GPIO.HIGH)
    time.sleep(0.000001)  # 1us should be long enough

  def OutputEnable(self, enable):
    if enable:
      self.ft232h_.output(self.OUTPUT_ENABLE_PIN, GPIO.LOW)
      time.sleep(0.000001)  # 1us should be long enough
    else:
      self.ft232h_.output(self.OUTPUT_ENABLE_PIN, GPIO.HIGH)
      time.sleep(0.000001)  # 1us should be long enough

  def copy_roms_(self):
    # TODO: Porting from alu.Alu()?
    pass

  def evaluate(self, x, y, f):
    if not self.booted:
      return 0xD00F

    self.OutputEnable(False)

    # Set source register 1
    self.i2c0_.write8(self.REG_OP0, (x >> 0) & 0xff)   # rs1[7:0]
    self.i2c0_.write8(self.REG_OP1, (x >> 8) & 0xff)   # rs1[15:8]
    self.i2c2_.write8(self.REG_OP0, (x >> 16) & 0xff)  # rs1[23:16]
    self.i2c2_.write8(self.REG_OP1, (x >> 24) & 0xff)  # rs1[31:24]

    # Set source register 2
    self.i2c1_.write8(self.REG_OP0, (y >> 0) & 0xff)   # rs2[7:0]
    self.i2c1_.write8(self.REG_OP1, (y >> 8) & 0xff)   # rs2[15:8]
    self.i2c3_.write8(self.REG_OP0, (y >> 16) & 0xff)  # rs2[23:16]
    self.i2c3_.write8(self.REG_OP1, (y >> 24) & 0xff)  # rs2[31:24]

    # Set function bits
    self.i2c1_.write8(self.REG_OP4, f & 0xf)           # f[3:0]

    self.OutputEnable(True)
    time.sleep(0.0001)  # 100us shoudl be long enough for ALU to populate the result.

    # Read back result
    rd = (self.i2c0_.readU8(self.REG_IP2) <<  0 +      # rd[7:0]
          self.i2c0_.readU8(self.REG_IP3) <<  8 +      # rd[15:8]
          self.i2c2_.readU8(self.REG_IP2) << 16 +      # rd[23:16]
          self.i2c2_.readU8(self.REG_IP3) << 24)       # rd[31:24]

    return rd


def main():
  tester = TesterV2()
  tester.copy_roms_()
  print('Expect XOR result: 0xff00ff00')
  print('Actual XOR result: 0x{:08x}'.format(tester.evaluate(0xffff0000, 0x00ffff00, 4)))  # F_XOR

if __name__ == "__main__":
    main()
