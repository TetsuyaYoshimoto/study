#encoding=utf-8

time = [8,59]

def inp():
    a,b,c = map(int, raw_input().split())
    num = []

    for i in xrange(input()):
        num.append(map(int, raw_input().split()))
    for i in xrange(len(num)):
        num[i] = syori(num[i],a,b,c)
    hantei(num)

def syori(num,a,b,c):
    num[1] += (b+c)
    if num[1] >= 60:
        num[0] += num[1] / 60
    if num[0] >= 9:
        return [0,0]
    else: return num

def hantei(num):
    ans = max(num)
    if len(str(ans[0])) == 1:
        ans[0] = "0" + str(ans[0])

    if len(str(ans[1])) == 1:
        ans[1] = "0" + str(ans[1])
    print "%s:%d" % (ans[0], ans[1])

if __name__ == "__main__":
    inp()



