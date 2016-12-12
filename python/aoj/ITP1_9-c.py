#encoding=utf-8

import sys

printf = sys.stdout.write

taro = 0
hanako = 0

x = input()
for i in range(x):
    word = map(str, raw_input().split())
    if word[0] > word[1]:
        taro += 3
    elif word[0] < word[1]:
        hanako += 3
    else:
        taro += 1
        hanako += 1

print str(taro) + " " + str(hanako)



