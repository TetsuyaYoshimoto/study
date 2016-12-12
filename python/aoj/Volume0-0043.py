#encoding=utf-8

import sys
import collections as col
num = []
for line in sys.stdin:
    tako = col.Counter(map(int, line[:-1]))
    for k,v in tako.items():
        num.append([k,v])
    for i in xrange(1,10):
        pass




print num


