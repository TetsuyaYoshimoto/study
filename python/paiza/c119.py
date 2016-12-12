#encoding=utf-8

x,y = map(int,raw_input().split())
day, ans, ans1 = [], 0, []
for i in xrange(x):
	day.append(map(int, raw_input().split()))

for i in xrange(x - y + 1):
	for j in xrange(y):
		ans += day[i + j][1]
	ans1.append(ans)
	ans = 0
	
for i in xrange(x - y + 1):
	for j in xrange(y):
		ans += day[i + j][1]
	if ans == min(ans1):
		break
	ans = 0
print day[i][0], day[i + y - 1][0]

