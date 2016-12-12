#encoding=utf-8

a,b = map(int, raw_input().split())
num1, num2, ans = [], [], 0

for i in xrange(a):
    num1.append(map(int,raw_input().split()))
for i in xrange(b):
    num2.append(input())
for i in xrange(a):
    for j in xrange(b):
        ans += num1[i][j]*num2[j]
    print ans
    ans = 0
