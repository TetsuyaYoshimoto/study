#encoding=utf-8
import sys
printf = sys.stdout.write

x = input()
fe, ans = [], []
for i in xrange(x):
	fe += (raw_input().split())
for i in xrange(x):
	for j in xrange(x -1, -1, -1):
		ans += fe[j][i]

for i in xrange(len(ans)):
	printf(ans[i])
	if (i+1) % x == 0:
		print ""

