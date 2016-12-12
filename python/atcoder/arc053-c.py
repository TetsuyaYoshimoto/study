

def inp():
    num, ans = [], []
    for i in xrange(input()):
        num.append(map(int ,raw_input().split()))
        num[i].insert(0,num[i][0] - num[i][1])
    if len(num) != 1:
        for i in xrange(len(num)):
            for j in xrange(len(num)):
                if i != j:
                    ans.append(num[i][0] + num[j][1])
        print ans
        print min(ans)
    else:
        print num[0][1]


if __name__ == "__main__":
    inp()

