#encoding=utf-8

num = []
x = input()
for i in xrange(x):
    num.append(input())

ans = -9999999999
num = num[::-1]
for i in xrange(len(num)):
    for j in xrange(len(num)-(i+1)):
        if ans < num[i] - num[j + i + 1]:
            ans = num[i] - num[j + i + 1]
print ans
