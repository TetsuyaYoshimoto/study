#encoding=utf-8

def inp():
    m,n,k = map(int, raw_input().split())
    men = []
    for i in xrange(m):
        men.append(0)
    men.append(n)
    for i in xrange(k):
        men = syori(men, input())
    del men[len(men)-1]
    out(men)

def syori(men, n):
    plus = 0
    for i in xrange(len(men)):
        if i + 1 == n:
            pass
        else:
            if men[i] != 0:
                men[i] -= 1
                plus += 1

    men[n - 1] += plus
    return men

def out(men):
    for i in xrange(len(men)):
        if max(men) == men[i]:
            print i + 1

if __name__ == "__main__":
    inp()



