#encoding=utf-8

x = map(int, raw_input().split())
N = input()
count = 0
NUM = []
for i in xrange(N):
    num = map(int,raw_input().split())
    NUM.append(num)

for i in xrange(N):
    count = 0
    for j in xrange(6):
        for k in xrange(6):
            if x[j] == NUM[i][k]:
                count += 1
    print count

