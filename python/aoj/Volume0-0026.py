from __future__ import (absolute_import, division, print_function, unicode_literals)
from collections import Counter
import sys
NUM = [[0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0],
       [0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0],
       [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]]
paper = Counter()

for line in sys.stdin:
    x, y, size = (int(s) for s in line.split(','))
    xidx = [x, x-1, x, x+1, x-2, x-1, x, x+1, x+2, x-1, x, x+1, x]
    yidx = [y-2, y-1, y-1, y-1, y, y, y, y, y, y+1, y+1, y+1, y+2]
    val = NUM[size-1]
    
    for a, b, i in zip(xidx, yidx, xrange(len(xidx))):
        if a < 0 or 9 < a or b < 0 or 9 < b:
            continue
        paper[a + b * 10] += val[i]

print(sum(1 for i in xrange(100) if not paper[i]))
print(max(paper[i] for i in xrange(100)))
                    
