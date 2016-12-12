#encoding=utf-8
import math

while True:
	count = 0
	x = input()
	if x == 0:
		break
	x = str(math.factorial(x))
	x = x[::-1]
	for i in xrange(len(x)):
		if x[i] == "0":
			count += 1
		else: break
	print count

