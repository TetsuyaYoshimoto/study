#encoding=utf-8

import sys

num, ans = [], []
for i in sys.stdin:
	num.append(int(i))
for i in xrange(1,101):
    ans.append(num.count(i))

for i in xrange(1,100):
    if max(ans) == ans[i]:
        print i + 1


