#encoding=utf-8

import sys
cyou, hisi = 0, 0
for i in sys.stdin:
	x,y,z = map(int, i.split(","))
	if x**2+y**2 == z**2:
		cyou += 1
	elif x == y:
		hisi += 1

print cyou
print hisi


