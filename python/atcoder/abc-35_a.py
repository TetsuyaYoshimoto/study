#encoding=utf-8
import sys
for line in sys.stdin:
    a,b = map(int,line.split())
    if a % 16 == 0 and b % 9 == 0:
        print "16:9"
    else:
        print "4:3"

