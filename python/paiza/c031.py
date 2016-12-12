#encoding=utf-8


x = input()
inp = []
t1,t2 = 0,999999999
for i in xrange(x):
    inp.append(map(int, raw_input().split()))
    if inp[i][2] > t1:
        t1 = inp[i][2]
    if inp[i][3] < t2:
        t2 = inp[i][3]
#print inp

print inp[0][0], inp[x - 1][1],t1,t2

