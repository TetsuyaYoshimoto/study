#encoding=utf-8
a,b = map(int,raw_input().split())

x = input()
for i in xrange(x):
    ainp, binp = map(int, raw_input().split())
    if a > ainp:
        print "High"
    elif a == ainp:
        if b < binp:
            print "High"
        else:
            print "Low"
    else:
        print "Low"


