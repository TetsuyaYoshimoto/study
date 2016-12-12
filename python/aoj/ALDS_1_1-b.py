#encoding=utf-8

x = input()
num = map(int , raw_input().split())
print num
for i in xrange(x - 1):
    if num[i] > num[i + 1]:
        tako = num[i]
        num[i] = num[i + 1]
        num[i + 1] = tako
    print num

