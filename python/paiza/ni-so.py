#encoding=utf-8

import sys
printf = sys.stdout.write

def inp():
    x = input()
    y = input()
    tako(x,y)

def tako(x,y):
    count1,count2 = 0,0
    for i in xrange(y):
        if count1 != x:
            count1 += 1
            printf("R")
        else:
            if count2 != x:
                count2 += 1
                printf("W")
            else:
                count1,count2 = 1,0
                printf("R")

if __name__ == "__main__":
    inp()


