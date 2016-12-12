#encoding=utf-8

nu = raw_input()
x,y,count = 0,0,0
for i in xrange(len(nu)):
	if nu[i] == "U":
		y += 1
	elif nu[i] == "R":
		x += 1
	elif nu[i] == "L":
		x -= 1
	elif nu[i] == "D":
		y -= 1
	else: count += 1
if input() == 1:
	print abs(x) + abs(y) + count
else:
	print abs(x) + abs(y) - count


