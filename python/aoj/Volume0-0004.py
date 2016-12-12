#encoding=utf-8

import numpy as np
import sys

printf = sys.stdout.write

for i in sys.stdin:
    try:
        a,b,c,d,e,f = map(float, i.split())
    except:
        printf(i)
        break

    A = np.array([[ a, b],
        [ d, e]])
    B = np.array([c,f])
    X = np.linalg.solve(A,B)
    print "{0:.3f}".format(X[0]),"{0:.3f}".format(X[1])

