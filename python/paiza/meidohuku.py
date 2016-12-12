#encoding=utf-8

def inp():
    x = input()
    for i in xrange(x):
        time = input()
        shori(time)

def shori(t):
    mi = 60
    ho = 24

    t = t / 3
    mi -= t % 60
    if t / 60 != 0:
        ho -= (t / 60)
    if mi == 60:
        mi = 0
        ho += 1
    ho = ho % 24
    if len(str(ho)) == 1:
        ho = "0" + str(ho)


    if len(str(mi)) == 1:
        mi = "0" + str(mi)


    print str(ho) + ":" + str(mi)


if __name__ == "__main__":
    inp()
