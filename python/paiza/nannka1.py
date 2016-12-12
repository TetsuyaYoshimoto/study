#encoding=utf-8

inp1,inp2 = [],[]
ans = 0

x,y,z = map(int,raw_input().split())
for i in xrange(y):
    inp1.append(map(int,raw_input().split()))
for i in xrange(z):
    inp2.append(map(int,raw_input().split()))

for i in xrange(z):
    i2,i1,i4,i3 = inp2[i][0]-1,inp2[i][1]-1,inp2[i][2],inp2[i][3]
    for j in xrange(i1,i3):
        for k in xrange(i2,i4):
            ans += inp1[j][k]
            inp1[j][k] = 0
print ans



