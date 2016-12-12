#encoding=utf-8



n,s,p=map(int,raw_input().split())
a = 0
b = 0
ans = 0

for i in xrange(n):
    a_i,b_i=map(int,raw_input().split())
    if s-p <= b_i and b_i <= s+p:
        if a == a_i:
            if b < b_i:
                a = a_i
                b = b_i
                ans = i
        elif a < a_i:
            a = a_i
            b = b_i
            ans = i
if ans == 0:
    print "not found"
else:
    print i


