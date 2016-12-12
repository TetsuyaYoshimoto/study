#encoding=utf-8

import sys
def inp():
    ans, num = 0, []
    x = input()
    for line in sys.stdin:
        num = str(range(1,int(line)))
        for i in xrange(len(num)):
            for j in xrange(len(num[i])):
                for k in xrange(len(num[i][j])):
                    if num[i][j][k] == str(x):
                        ans += 1
        print ans

if __name__ == "__main__":
    print "1"
    inp()

