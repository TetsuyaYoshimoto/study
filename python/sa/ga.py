#encoding=utf-8

import math
import numpy as np
import math


A = np.array([[3,-2], [1,4]])
print A

s = 1.0/math.sqrt(2)

B = np.array([[s, -s],[s,s]])

print B
print B.T
# 要素同士の積
print B*B.T

# 行列積
print B.dot(B.T)

print ""
print ""


C = np.array([[2,0], [0,2]])
D = np.array([[0,4,4,0], [-2,-2,-10,-10]])

print C.dot(D)

print ""

E = np.array([[3,0], [0,3]])
F = np.array([[0,3,3,0], [-4,-4,-10,-10]])
print E.dot(F)



