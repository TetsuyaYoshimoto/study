#encoding=utf-8

n,m,mit = map(int, raw_input().split())
data1, data2 = [], []
data1 = map(int, raw_input().split())
for i in xrange(m):
	data2.append(map(int,raw_input().split()))
	data2[i].insert(0, data1[i])

print data1
print data2

