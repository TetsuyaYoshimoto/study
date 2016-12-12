#encoding=utf-8

a,b,R = map(int,raw_input().split(" "))
N = input()
for i in xrange(N):
	x,y = map(int, raw_input().split(" "))
	ans = (x - a)**2 + (y - b)**2
	if ans < R**2:
		print "noisy"
	else:
		print "silent"
	

