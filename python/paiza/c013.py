#encoding=utf-8

x = raw_input()
room = input()
count = 0
for i in xrange(room):
	num = raw_input()
	if num.find(x) == -1:
		print num
		count += 1

if count == 0:
	print "none"

