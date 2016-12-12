#encoding=utf-8

import math
x = input()

for i in xrange(x):
	x1,y1,r1,x2,y2,r2 = map(float, raw_input().split())
	d = math.sqrt((x1 - x2)**2 + (y1 - y2)**2)

	if d > (r1 + r2):#外部判定
		print "0"
	elif abs(r1 - r2) <= d <= r1 + r2:#交わる判定
		print "1"
	elif d < abs(r1 + r2):#内包判定
		if r1 > r2:#AにBが入っている
			print "2"
		else:#BにAが入っている
			print "-2"


