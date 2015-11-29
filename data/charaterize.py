#!/usr/bin/python

import sys

for line in sys.stdin:
    unic = line.decode('utf-8')
    unic = unic.strip()
    unic_list = list(unic)
    unic_new = ' '.join(i.encode('utf-8') for i in unic_list if i != ' ')
    print unic_new
