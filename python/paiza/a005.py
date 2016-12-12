

def inp():
    a,b,n = map(int,raw_input().split())
    num = raw_input().split()
    print num
    for i in xrange(n):
        if num[i] == "G": num[i] = "0"


    flag,flag1, score = 0, 0, []
    for i in xrange(0,n,2):
        score.append([num[i],num[i+1]])
    print score

if __name__=="__main__":
    inp()


