#encoding=utf-8

import sys
for i in sys.stdin:
	x = map(float, i.split())
	t = x[0] / 9.8
	y = 4.9*(t**2)
	print int((y + 5)/5) + 1



