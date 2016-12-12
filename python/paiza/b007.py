#encoding=utf-8

import itertools as iter
num, num1, ans = [], [], []
x,y=map(int,raw_input().split())
for i in xrange(y): num.append(sum(map(int,raw_input().split())))

for i in xrange(y):
	for element in iter.combinations(num,i):
            if sum(element) > -10:
		ans.append(sum(element))
print max(ans)




