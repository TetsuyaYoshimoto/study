#encoding=utf-8

# while True:
# 	x, num = map(int,raw_input().split())
# 	if x == num == 0:
# 		break
# 	count = 0
# 	for a in xrange(10):
# 		if num == a and x == 1:
# 			count += 1
# 		if x > 1:
# 			for b in xrange(a + 1,10):
# 				if num == a+b and x == 2:
# 					count += 1
# 				if x > 2:
# 					for c in xrange(b + 1,10):
# 						if num == a+b+c and x == 3:
# 							count += 1
# 						if x > 3:
# 							for d in xrange(c + 1,10):
# 								if num == a+b+c+d and x == 4:
# 									count += 1
# 								if x > 4:
# 									for e in xrange(d + 1,10):
# 										if num == a+b+c+d+e and x == 5:
# 											count += 1
# 										if x > 5:
# 											for f in xrange(e + 1,10):
# 												if num == a+b+c+d+e+f and x == 6:
# 													count += 1
# 												if x > 6:
# 													for g in xrange(f + 1,10):
# 														if num == a+b+c+d+e+f+g and x == 7:
# 															count += 1
# 														if x > 7:
# 															for h in xrange(g + 1,10):
# 																if num == a+b+c+d+e+f+g+h and x == 8:
# 																	count += 1
# 																if x > 8:
# 																	for i in xrange(h + 1,10):
# 																		if num == a+b+c+d+e+f+g+h+i and x == 9:
# 																			count += 1
#
# 	print count

import itertools as iter
while True:
	count = 0
	x,y = map(int,raw_input().split())
	if x == y == 0: break
	for element in iter.combinations(range(10),x):
		if sum(element) == y:
			count += 1
	print count
	

