#encoding=utf-8

import sys
from sympy import *

printf = sys.stdout.write

num = input()
x = map(int, raw_input().split())
y = map(int, raw_input().split())

print num,x,y
d = 0.0

for i in range(len(x)):
    d += abs(x[i] - y[i])
print d

d = 0
for i in range(len(x)):
    d += abs(x[i] - y[i])**2
d = d**(1.0/2)
print d

d = 0
for i in range(len(x)):
    d += abs(x[i] - y[i])**3
d = d**(1.0/3)
print d

d = 0
for i in range(len(x)):
    d += abs(x[i] - y[i])**oo


