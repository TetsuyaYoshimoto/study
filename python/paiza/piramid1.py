#encoding=utf-8

me = []
def inp():
    x = input()
    masu = map(int ,raw_input().split())
    y = input()
    for i in xrange(y):
        me.append(str(input())) 
    syori(masu,me)

def syori(masu,me):
    for i in xrange(len(me)):
        if int(me[i]) == len(masu) - 1:
            print "Yes"
        elif int(me[i]) > len(masu) or masu[int(me[i])] == 0:
            print "No"
        else:
            syori1(masu,int(me[i]))
            

def syori1(masu,me):
    me1 = me + masu[me]
    try:
        if masu[me1] + masu[me] == 0:
            print "No"
        else:
            if len(masu) - 1 == me1:
                print "Yes"
            else:
                syori1(masu,me1)
    except:
        print "No"
       
if __name__ == "__main__":
    inp()


