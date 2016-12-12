#encoding=utf-8

import sys


need = []
have = []
count = 0
flag = 0

x = input()
for i in xrange(x):
    need.append(map(str, raw_input().split()))
    need[i][1] = int(need[i][1])

y = input()
for i in xrange(y):
    have.append(map(str,raw_input().split()))
    have[i][1] = int(have[i][1])

#while True:
while True:
    for i in xrange(x):
        flag = 0
        for j in xrange(y):
            if need[i][0] != have[j][0]:
                flag += 1;
                if flag == y: break
            if need[i][0] == have[j][0]:    
                if have[j][1] - need[i][1] >= 0:
                    have[j][1] -= need[i][1]
                    if have[j][1] <= 0: break
        if have[j][1] <= 0 or flag == y: break
    count += 1
    if have[j][1] <= 0 or flag == y: break
print count


