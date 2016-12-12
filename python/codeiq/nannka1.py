#encoding=utf-8

def inp():
    fe = []
    x, y = map(int, raw_input().split(","))
    for i in xrange(y + 1):
        fe.append([0]*(x + 1))
    print fe
    fe[0][0] = 1
    print shori1(fe,0,0)

def shori1(fe,x,y):
    right_down(fe,x,y,0,"rd")


def right_up(fe,y,x,flag,h):
    try:
        print x,y
        print "right_up"
        fe[x + 1][y - 1] = 1
        right_up(fe,x + 1,y - 1,0,"ru")
    except:
        flag += 1
        if flag >= 3 or h == "ld":
            print fe
        else:
            left_up(fe,x,y,flag,h)

def left_up(fe,y,x,flag,h):
    try:
        print x,y
        print "left_up"
        fe[x - 1][y - 1] = 1
        left_up(fe,x - 1,y - 1,0,"lu")
    except:
        flag += 1
        if flag >= 3 or h == "rd":
            print fe
        else:
            right_down(fe,x,y,flag,h)

def right_down(fe,y,x,flag,h):
    try:
        print x,y
        print "right_down"
        fe[x + 1][y + 1] = 1
        right_down(fe,x + 1,y + 1,0,"rd")
    except:
        flag += 1
        if flag >= 3 or h == "lu":
            print fe
        else:
            left_down(fe,x,y,flag,h)

def left_down(fe,y,x,flag,h):
    try:
        print x,y
        print "left_down"
        fe[y - 1][x + 1] = 1
        left_down(fe,y - 1,x + 1,0,"ld")
    except:
        flag += 1
        if flag >= 3 or h == "ru" :
            print fe
        else:
            right_up(fe,x,y,flag,h)




if __name__ == "__main__":
    inp()




