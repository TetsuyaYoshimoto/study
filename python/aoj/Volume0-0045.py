#encoding=utf-8

import sys
ans1, ans2, count = 0,0.0,0
for line in sys.stdin:
	num = (map(int, line.split(",")))
	ans1, ans2, count = ans1 + num[0]*num[1], ans2 + num[1], count + 1
print ans1
print int(round(ans2/count))
