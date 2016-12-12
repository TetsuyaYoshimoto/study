#encoding=utf-8
import sys

def inp():
    fe, fe1,fe2 = [], [] ,[]
    for line in sys.stdin: fe.append([line[i: i + 1] for i in range(0, len(line), 1)])
    for i in xrange(len(fe)): del fe[i][len(fe[i]) - 1]
    for i in xrange(0,len(fe),2): fe1.insert(len(fe1),fe[i])
    for i in xrange(1,len(fe),2): fe2.insert(len(fe2),fe[i])

    print "R"
    right(fe1,fe2,0,0,0)

def right(f1,f2,x,y,flag):
    print "right"
    try:
        if f1[y][x+1] == "1":
            print "R"
            f1[y][x] = "0"
            right(f1,f2,x+1,y,flag)
        else:
            flag += 1
            if flag == 4:
                return 0
            down(f1,f2,x,y,flag)
    except:
        flag += 1
        if flag == 4:
            return 0
        down(f1,f2,x,y,flag)

def down(f1,f2,x,y,flag):
    print "down"
    try:
        if f2[y+1][x] == "1":
            print "D"
            f2[y][x] = "0"
            down(f1,f2,x,y+1,flag)
        else:
            flag += 1
            if flag == 4:
                return 0
            left(f1,f2,x,y,flag)
    except:
        flag += 1
        if flag == 4:
            return 0
        left(f1,f2,x,y,flag)
    
def left(f1,f2,x,y,flag):
    print "left"
    try:
        if f1[y][x-1] == "1":
            print "L"
            f1[y][x] = "0"
            left(f1,f2,x-1,y,flag)
        else:
            flag += 1
            if flag == 4:
                return 0
            up(f1,f2,x,y,flag)
    except:
        flag += 1
        if flag == 4:
            return 0
        up(f1,f2,x,y,flag)

    
def up(f1,f2,x,y,flag):
    print "up"
    try:
        if f2[y-1][x] == "1":
            print "U"
            f2[y][x] = "0"
            up(f1,f2,x,y-1,flag)
        else:
            flag += 1
            if flag == 4:
                return 0
            right(f1,f2,x,y,flag)
    except:
        flag += 1
        if flag == 4:
            return 0
        right(f1,f2,x,y,flag)
    
if __name__=="__main__":
    inp()


