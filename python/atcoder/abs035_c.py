#encoding=utf-8
import sys
printf = sys.stdout.write

x, y = map(int,raw_input().split())
fe = ["0"]*x

for i in xrange(y):
	a,b = map(int,raw_input().split())
	for j in xrange(a - 1,b):
		if fe[j] == "0":
			fe[j] = "1"
		else:
			fe[j] = "0"

for i in xrange(x): printf(fe[i])
print ""

