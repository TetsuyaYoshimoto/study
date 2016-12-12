#encoding=utf-8

import sys
for i in sys.stdin:
	ans, num = 0.0, []
	num = map(int, i.split(","))
	x, y = float(num[10]), float(num[11])
	del num[10:12]
#	print sum(num)*(x/(x+y)), sum(num)*(y/(x+y))
	for i in xrange(10):
		ans += num[i]
#		print i,ans, sum(num)*(x/(x+y))
		if ans >= (sum(num)*(x/(x+y))):
			break
	print i + 1

