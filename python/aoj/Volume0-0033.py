#encoding=utf-8

x = input()
for i in xrange(x):
	num,a,b = [],[0],[0]
	num = map(int, raw_input().split())
	for i in xrange(10):
		if num[i] > a[0]:
			a.insert(0,num[i])
		elif num[i] > b[0]:
			b.insert(0,num[i])
		else:
			pass

	if len(a) + len(b) == 12:
		print "YES"
	else:
		print "NO"

