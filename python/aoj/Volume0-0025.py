#encoding=utf-8

import sys
hit, brow = 0, 0
a, b = [], []
for i in sys.stdin:
    a.append(map(int, i.split()))

for i in xrange(0,len(a),2):
    for j in xrange(4):
        if a[i][j] == a[i + 1][j]:
            hit += 1
        elif a[i + 1][j] in a[i]:
            brow += 1

    print hit, brow
    brow, hit = 0, 0



