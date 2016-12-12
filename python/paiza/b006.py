#encoding=utf-8

import sys
import math 

def inp():
    o_y, s, thita = map(float,raw_input().split())
    x,y,big = map(float,raw_input().split())
    ans = hantei(o_y, s, thita, x, y, big)
    if ans[0] != "Miss":
        print ans[0], ans[1]
    else:
        print ans[0]


def hantei(o_y, s, th, x, y, big):
    g = 9.8
    x1 = o_y
    x2 = x*math.tan(kakudo(th))
    kaku = ((math.cos(2*kakudo(th)) + 1)/2)
    x3 = ((g*(x**2))/(2*(s**2)*kaku))

    z = round(x1 + x2 - x3, 1)
    if y - (big/2) < z < y + (big/2):
        return "Hit", y - z
    else:
        return "Miss", y - z
    
def kakudo(th):
    return (math.pi/180)*th

if __name__ == "__main__":
    inp()



