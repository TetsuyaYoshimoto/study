#encoding=utf-8

import sys
printf = sys.stdout.write

x = input()
num = map(int,raw_input().split())
count = 0

for i in xrange(x):
    for j in xrange(x - i - 1):
        if num[j] > num[j + 1]:
            inp = num[j]
            num[j] = num[j + 1]
            num[j + 1] = inp
            count += 1

for i in xrange(x - 1):
    print num[i],
printf(str(num[x - 1]))

printf("\n" + str(count))
