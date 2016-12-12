#encoding=utf-8

x = input()
for i in xrange(x):
	try:
		inp = map(int, raw_input().split("."))
	except:
		inp = [-1,-1,-1,-1]
	finally:
		if 0 <= inp[0] and inp[0] <= 255:
			if 0 <= inp[1] and inp[1] <= 255:
				if 0 <= inp[2] and inp[2] <= 255:
					if 0 <= inp[3] and inp[3] <= 255:
						print "True"
					else:
						print "False"
				else:
					print "False"
			else:
				print "False"
		else:
			print "False"

