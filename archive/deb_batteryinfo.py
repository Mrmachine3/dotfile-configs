#!/usr/bin/python
# coding=UTF-8

#---Author: Anthony Rodriguez
#---Created Date: 08/06/2018
#---Project Tag: linux, utility, python3
#---Purpose:
#   The purpose of this script is to indicate the current battery
#   life of the macbook pro. Additionally, this script is run via
#   a command line and displayed as part of the zsh prompt.
#--->

from tempfile import NamedTemporaryFile
from decimal import Decimal
from subprocess import Popen, PIPE
import subprocess
import plistlib
import math
import sys

with Popen(["upower", "-i", "/org/freedesktop/UPower/devices/battery_BAT1"], stdout=PIPE, bufsize=1, universal_newlines=True) as p:
    for line in p.stdout:
        print(line, end='')

print(p.stdout.line[3])


'''
o_max = [l for l in output.splitlines() if  'energy-full' in l][0]
o_cur = [l for l in output.splitlines() if 'energy' in l][0]

b_max = float(o_max.rpartition('=')[-1].strip())
b_cur = float(o_cur.rpartition('=')[-1].strip())

charge = (b_cur / b_max)*100
charge_threshold = int(math.ceil(charge/10))
print(str(round(charge,0))+"%")


# Output
total_slots, slots = 10, []
filled = int(math.ceil(charge_threshold * (total_slots / 10.0))) * u'▸'
empty = (total_slots - len(filled)) * u'▹'

out = (filled + empty).encode('utf-8')

color_green = '[1;32m|'
color_yellow = ' [1;33m|'
color_red = '[1;31m|'
color_reset = '[1;00m'
color_out = (
    color_green if len(filled) > 7
    else color_yellow if len(filled) > 4
    else color_red
)

out = color_out + out + color_reset
sys.stdout.write(out)
'''
