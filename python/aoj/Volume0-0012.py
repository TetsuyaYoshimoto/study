#encoding=utf-8
import sys
import math

def inp():
    for i in sys.stdin:
        x1,y1,x2,y2,x3,y3,xp,yp = map(float, i.split())
        p = ((y1 - y3)*(y1**2 - y1**2 + x1**2 - x2**2) - (y1 - y2)*(y1**2 - y3**2 + x1**2 - x3**2))/(2*(y1 - y3)*(x1 - x2) - 2*(y1 - y2)*(x1 - x3))
        q = ((x1 - x3)*(x1**2 - x2**2 + y1**2 - y2**2) - (x1 - x2)*(x1**2 - x3**2 + y1**2 - y3**2))/(2*(x1 - x3)*(y1 - y2) - 2*(x1 - x2)*(y1 - y3))
        a,b = rennritu(x1,y1,x2,y2)
        c1 = hantei(a,b,p,q,xp,yp)
        a,b = rennritu(x2,y2,x3,y3)
        c2 = hantei(a,b,p,q,xp,yp)
        a,b = rennritu(x3,y3,x1,y1)
        c3 = hantei(a,b,p,q,xp,yp)
        if c1 == c2 == c3:
            print "Yes"
        else:
            print "No"

def rennritu(x1,y1,x2,y2):
    if x1 == 0:
        if y1 == 0:
            return 1,1
        else:
            return 0,y1
    elif y1 == 0:
        return x1,0
    elif x2 == 0:
        if y2 == 0:
            return 0,0
        else:
            return 0,y2
    elif y2 == 0:
        return x2,0

    else:
        a = (y1 - y2)/(x1 - x2)
        b = y1 - (a*x1)
    return a,b

def hantei(a,b,p,q,xp,yp):
    z1 = niji(a,b,p,q)
    z2 = niji(a,b,xp,yp)
    if z1 == z2:
        return 1
    else:
        return 0

def niji(a,b,x,y):
    if y < a*x + b:
        return 0
    else:
        return 1

if __name__ == "__main__":
    inp()


