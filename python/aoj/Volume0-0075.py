#encoding=utf-8

import sys

def inp():
    for i in sys.stdin:
        num = map(float, i.split(","))
        if num[1] / (num[2]**2) >= 25:
            print str(int(num[0]))

if __name__ == "__main__":
    inp()

