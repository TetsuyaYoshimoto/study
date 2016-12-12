#encoding=utf-8

# x = input()
# for i in xrange(x):
# 	grad1,grad2 = 0, 0
# 	x1,y1,x2,y2,x3,y3,x4,y4 = map(float, raw_input().split())
# 	grad1, grad2 = ((y1 - y2)/(x1 - x2)), ((y3 - y4)/(x3 - x4))
# 	if grad1 == grad2:
# 		print "YES"
# 	else:
# 		print "NO"

 
for i in xrange(input()):
	grad1, grad2 = 0, 0
	x1,y1,x2,y2,x3,y3,x4,y4=map(float,raw_input().split())
	grad1, grad2 =	(y1 - y2)*(x3 - x4) , (y3 - y4)*(x1 - x2)
	if grad1 - grad2 == 0:
		print "YES"
	else:
		print "NO"
