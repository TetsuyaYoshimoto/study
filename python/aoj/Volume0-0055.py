#encoding=utf-8

import sys
for line in sys.stdin:
	ans = 0
	a,b,c = map(float, line.split())
	x = str(a/b)
#	print x,int(x[2:int(c)+2])
	for i in xrange(2,int(c)+2):
		try:
			ans += int(x[i])
		except: pass
	print ans

