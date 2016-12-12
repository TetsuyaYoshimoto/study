

def inp():
    l,x,y,s,d = map(int,raw_input().split())
    rp = float(d-s)
    rm = float(l-d+s)
    try: tp =  rp/(x+y)
    except: pass
    try: tm = abs(rm/(x-y))
    except: pass
    try:
        if tp > tm: print "{0:.10f}".format(tm)
    except: pass
    try:
        if tp < tm: print "{0:.10f}".format(tp)
    except: pass
    print tp

if __name__ == "__main__":
    inp()


