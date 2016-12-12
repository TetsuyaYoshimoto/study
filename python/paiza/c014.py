#encoding=utf-8

n,r = map(int,raw_input().split())

for i in xrange(n):
	h,w,d = map(int,raw_input().split())
	if r*2 <= h and r*2 <= w and r*2 <= d:
		print i + 1



