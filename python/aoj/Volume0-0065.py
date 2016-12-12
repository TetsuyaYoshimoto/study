#encoding=utf-8

import sys
import collections as col

def inp():
    num = []
    for line in sys.stdin:
        try:
            x = map(int, line.split(","))
            num.append(x[0])
        except:
            pass

    element = col.Counter(num)

    for i in xrange(len(element)):
        if element.values()[i] != 1:
            print element.keys()[i], element.values()[i]


if __name__ == "__main__":
    inp()

