#encoding=utf-8
import math

x,y = map(int,raw_input().split())
k = input()
N = input()
xn,yn,pn = [],[],[]
means = []
mini = 10000000
flag = 0
ans = 0

for i in xrange(N):
    inp = map(int,raw_input().split())
    xn.append(inp[0])
    yn.append(inp[1])
    pn.append(inp[2])

for i in xrange(N):
    inp = round(math.sqrt((x - xn[i])**2 + (y - yn[i])**2))
    means.append(round(inp))


for i in xrange(k):
    for j in xrange(N):
        if means[j] < mini:
            mini = means[j]
            flag = j
    means[flag] = 10000000
    ans += pn[flag]
    mini = 10000000

print ans/k


