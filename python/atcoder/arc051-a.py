#encoding=utf-8



def inp():
    x = map(int,raw_input().split())
    z = map(int,raw_input().split())
    if syori1(x[0], x[1], x[2], z[0],z[1]) == syori1(x[0], x[1], x[2], z[2],z[1]) == syori1(x[0], x[1], x[2], z[0],z[3]) == syori1(x[0], x[1], x[2], z[2],z[3]) == "NO":
        if abs(z[0] - z[2]) > x[2]**2:
            print "NO"
            print "YES"
        else:
            print "YES"
            print "YES"
    elif syori1(x[0], x[1], x[2], z[0],z[1]) == syori1(x[0], x[1], x[2], z[2],z[1]) == syori1(x[0], x[1], x[2], z[0],z[3]) == syori1(x[0], x[1], x[2], z[2],z[3]) == "YES":
        print "YES"
        print "NO"
    else:
        print "NO"
        print "NO"


def syori1(x,y,r,x1,y1):
    if ((((x - x1)**2) + ((y - y1)**2)) <= r**2) == True:
        return "YES"
    else:
        return "NO"


if __name__ == "__main__":
    inp()

