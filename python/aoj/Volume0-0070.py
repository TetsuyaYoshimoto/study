#encoding=utf-8

import sys
import itertools as iter

for i in sys.stdin:
    x,y = map(int, i.split())
    print x,y 

for element in iter.combinations(range(1,10), 3):
    if sum(element) == y:
        print element



