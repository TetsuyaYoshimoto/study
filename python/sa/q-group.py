

def syori(kosuu, num, data):
    num = data[0]
    for i in xrange(kosuu):
        num += data[i + 1]
    return num

if __name__=="__main__":
    kosuu, num, data= 5, 0, [10,20,30,40,50,60]
    print syori(kosuu, num, data)




