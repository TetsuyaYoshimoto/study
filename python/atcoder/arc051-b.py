#encoding=utf-8

N,A,B = map(int, raw_input().split())
a = map(int, raw_input().split())
for i in xrange(B):
    z = a.index(min(a))
    a[z] = min(a)*A
a = sorted(a)

for i in xrange(N):
    print a[i] % (10**9 + 7)


