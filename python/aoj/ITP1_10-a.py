#encoding=utf-8

import sys
import math

printf = sys.stdout.write

x1,y1,x2,y2 = map(float,raw_input().split())

X = x2 - x1
Y = y2 - y1
printf(str(math.sqrt(X**2 + Y**2)))

