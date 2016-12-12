#encoding=utf-8
import sys
for line in sys.stdin:
	num = []
	num.append(float(line[:-1]))
	for i in xrange(0,10,2):
		num.append(round((num[i]*2), 13))
		num.append(round(((num[i + 1])/3), 13))
	print sum(num)
