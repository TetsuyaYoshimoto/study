#encoding=utf-8

import sys
import math
printf = sys.stdout.write


a,b,c=map(float,raw_input().split())

S = 0.5 * a * b * math.sin(math.radians(c))
print float(S)


