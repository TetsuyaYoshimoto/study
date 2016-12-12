#encoding=utf-8

def inp():
    me = []
    gohyaku, hyaku, gojyu, jyu = map(int, raw_input().split())
    x = input()
    for i in xrange(x):
        gohyaku,hyaku,gojyu,jyu = syori(gohyaku,hyaku,gojyu,jyu,map(int,raw_input().split()))

def syori(x,y,z,w,me):
    ans = []
    x += me[1]
    y += me[2]
    z += me[3]
    w += me[4]
    sr = me[1]*500 + me[2]*100 + me[3]*50 + me[4]*10
    oturi = sr - me[0]

    if oturi >= 100:
        if y - oturi/100 >= 0:
            y -= oturi/100
            ans.append(oturi/100)
            oturi -= (oturi/100)*100
        else: ans.append(0)
    else: ans.append(0)
            
    if oturi >= 50:
        if z - oturi/50 >= 0:
            z -= oturi/50
            ans.append(oturi/50)
            oturi -= (oturi/50)*50
        else: ans.append(0)
    else: ans.append(0)
            
    if oturi >= 10:
        if w - oturi/10 >= 0:
            w -= oturi/10
            ans.append(oturi/10)
            oturi -= (oturi/10)*10
        else: ans.append(0)
    else: ans.append(0)

    if oturi == sr - me[0] and sum(ans) == 0:
        x -= me[1]
        y -= me[2]
        z -= me[3]
        w -= me[4]
        print "impossible"
        return x,y,z,w

    ans.insert(0,0)
    print ans[0], ans[1], ans[2], ans[3]
    return x,y,z,w

if __name__ == "__main__":
    inp()

