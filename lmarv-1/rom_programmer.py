import binascii
import os
import sys

from absl import app
from absl import flags
import serial

FLAGS = flags.FLAGS

flags.DEFINE_string('file', None, 'File to write.')
flags.mark_flag_as_required('file')


def read_generator(filename):
    with open(filename, "rb") as f:
        while True:
            data = f.read(256)
            if data:
                yield data
            else:
                break


def main(argv):
    file_size = os.stat(FLAGS.file).st_size
    if file_size != 8 * 1024 and file_size != 32 * 1024:
        print("File size not 8k or 32k.")
        return

    print("File size {}k".format(file_size / 1024))
    with serial.Serial('COM16', 115200, timeout=0, rtscts=True) as port:
        print("Waiting for serial port")

        bs = bytes()
        while bs != b'<':
            bs = port.read(1)

        port.write('{}\r'.format(int(file_size / 1024)).encode('utf-8'))
        print("Wrote size")

        address = 0

        for wbs in read_generator(FLAGS.file):
            if len(wbs) != 256:
                print("Fail! File bytes not 256")
                return
            bs = bytes()
            while bs != b'>' and bs != b'X':
                bs = port.read(1)

            if bs == b'X':
                print("Done!")
                return

            port.write(wbs)

            bs = bytes()
            while bs != b'!':
                bs = port.read(1)
                if bs and bs != b'!':
                    print(chr(bs[0]), end='', flush=True)
            bs = bytes()
            while bs != b'P' and bs != b'F':
                bs = port.read(1)

            if bs == b'F':
                print("Fail!")
                return

            address += 256
            print("{:04X}".format(address))


if __name__ == "__main__":
    app.run(main)