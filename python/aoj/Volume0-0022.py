#encoding=utf-8

import sys

while True:
	x = input()
	num, ans = [], []
	if x == 0: break
	else:
		for j in xrange(x):
			num.append(input())
		for j in xrange(x):
			if num[j] > 0:
				for k in xrange(j + 1,x + 1):
# 					print num[j:k]
# 					print sum(num[j:k])
 					ans.append(sum(num[j:k]))
			else:
				pass
		print max(ans)


