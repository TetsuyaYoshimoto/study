#encoding=utf-8
num = []
K,N = map(int, raw_input().split())
for i in xrange(K):
	tako = map(int ,raw_input().split())
	num.append([tako[0]*tako[1]/100 * 100/tako[0],tako[0], tako[1]])
print num
print sorted(num)


