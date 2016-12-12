#encoding=utf-8
import itertools as iter
import sys
for i in sys.stdin:
    omori = [1, 2, 4, 8, 16, 32, 64, 128, 256, 512]
    x = int(i)
    for i in xrange(1,11):
        for element in iter.combinations(omori,i):
             if sum(element) == x:
                 for k in xrange(len(element) - 1):
                     print element[k],
                 print element[len(element) -1]
