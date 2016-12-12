#encoding=utf-8
import sys

for i in sys.stdin:
	print i.find(" ")
	for j in xrange(i.find(" ")):
		num = i[j]
		print "tet"
		print num

