#encoding=utf-8
x = []
ans = 0
while True:
    try:
        x.append(input())
    except:
        break

for i in xrange(len(x)):
    for j in xrange(x[i],600,x[i]):
        ans += j*j*x[i]
    print ans
    ans = 0

