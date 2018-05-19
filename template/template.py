:

#!/usr/bin/env python3
import random
n = int(input())
a, b = map(int, input().split())

#!/usr/bin/env python2
from pwn import * # https://pypi.python.org/pypi/pwntools
import argparse
parser = argparse.ArgumentParser()
parser.add_argument('host', nargs='?', default='localhost')
parser.add_argument('port', nargs='?', default=8000, type=int)
parser.add_argument('--log-level', default='debug')
parser.add_argument('--binary')
parser.add_argument('--libc')
args = parser.parse_args()
context.log_level = args.log_level
context.binary = args.binary
elf = ELF(args.binary)
libc = ELF(args.libc)
p = remote(args.host, args.port)
p = process(args.binary)

# Python Version: 3.x
# -*- coding: utf-8 -*-
if __name__ == '__main__':
    pass

from IPython.core.debugger import Pdb ; Pdb().set_trace()
