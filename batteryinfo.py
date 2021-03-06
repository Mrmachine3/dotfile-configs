#!/usr/bin/python
# coding=UTF-8

#---Author: Anthony Rodriguez
#---Created Date: 08/06/2018
#---Project Tag: OSX, utility, python3, mac
#---Purpose:
#   The purpose of this script is to indicate the current battery
#   life of the macbook pro. Additionally, this script is run via
#   a command line and displayed as part of the zsh prompt.
#--->

from tempfile import NamedTemporaryFile
from decimal import Decimal
import subprocess
import plistlib
import math
import sys

p = subprocess.Popen(["ioreg", "-rc", "AppleSmartBattery"], stdout=subprocess.PIPE)
output = p.communicate()[0]

o_max = [l for l in output.splitlines() if 'MaxCapacity' in l][0]
o_cur = [l for l in output.splitlines() if 'CurrentCapacity' in l][0]

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
