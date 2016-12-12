#encoding=utf-8
import collections

x = input()
num, ans = [], [10]*x
for i in xrange(x):
	num.append(input())

count = 0
count_dict = collections.Counter(num)
for k, v in count_dict.items():
    count += 1

for i in xrange(count):
    tako = min(num)
    for j in xrange(x):
        if tako == num[j]:
            ans[j] = i
            num[j] = 10000000000

for i in xrange(x): print ans[i]

