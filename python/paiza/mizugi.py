

def inp():
    ans1 = 1
    x = input()
    
    for i in xrange(2,x+1,1):
#        if i % 10 == 0:
#            pass
#        else:
        ans1 *= i
#        ans1 = tako(ans1)
#    print ans1
    return tako(str(ans1))

def tako(ans1):
    ans = ""
    z = len(ans1) - 1
    ans1 = ans1.rstrip("0")

    ans1 = ans1[::-1]
    if len(ans1) > 9:
        for i in xrange(9):
            ans += ans1[i]
    else:
        ans = ans1
        
    ans = ans[::-1]
    return int(ans.lstrip("0"))

if __name__ == "__main__":
    print inp()



