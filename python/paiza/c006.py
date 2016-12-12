#encoding=utf-8

c = []
score = []
ans = []
n,m,k = map(int,raw_input().split())
c = map(float,raw_input().split())

for i in xrange(m):
	inp = map(float,raw_input().split())
	score.append(inp)

for i in xrange(m):
	for j in xrange(n):
		score[i][j] = score[i][j]*c[j]
	ans.append(int(round(sum(score[i]))))
ans.sort()
ans = ans[::-1]
for i in xrange(k):
	print ans[i]
