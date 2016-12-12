#encoding=utf-8
x = input()
M = input()
m1 = map(int, raw_input().split())
N = input()
n1 = map(int, raw_input().split())
count = 0

for i in xrange(N):
    for j in xrange(M):
        if m1[j] == n1[i]:
            break
        elif j == (M - 1):
            print n1[i],
            count += 1
            break
if count == 0:
    print "None"

