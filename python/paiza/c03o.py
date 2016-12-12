#encoding=utf-8

xc,yc,r_1,r_2 = map(int, raw_input().split())
num = []
N = input()
for i in xrange(N):
    z = map(int,raw_input().split())
    num.append(z)

for i in xrange(N):
    en = ((num[i][0] - xc)**2) + ((num[i][1] - yc)**2)
    if en >= (r_1**2):
        if en <= (r_2**2):
            print "yes"
        else:
            print "no"
    else:
        print "no"



