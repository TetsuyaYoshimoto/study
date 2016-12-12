#encoding=utf-8

x, y =map(int, raw_input().split())
num = []
for i in xrange(x):
    num = map(int, raw_input().split())
    for j in xrange(y):
        if num[j] >= 128:
            if j == y - 1:
                print 1
            else: print 1,
        else:
            if j == y - 1:
                print 0
            else: print 0,
        
