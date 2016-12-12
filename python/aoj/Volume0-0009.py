#encoding=utf-8

import sys

def prime(q):
    count = 0
    for i in xrange(1,q+1):
        if i == 2:
            count += 1
        if pow(2, i-1, i) == 1:
            count += 1
    return count 


if __name__ == "__main__":
    for i in sys.stdin:
        x = int(i)
        print prime(x)
        

