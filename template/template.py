:
#!/usr/bin/env python3
n = int(input())
a, b = map(int,input().split())

#!/usr/bin/env python2
from pwn import * # https://pypi.python.org/pypi/pwntools
import argparse
parser = argparse.ArgumentParser()
parser.add_argument('host')
parser.add_argument('port', type=int)
args = parser.parse_args()
context.log_level = 'debug'
