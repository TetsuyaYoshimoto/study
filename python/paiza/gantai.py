#encoding=utf-8
ans = []
def inp():
    x = input()
    none = input()
    a = map(int,raw_input().split())
    none = input()
    b = map(int,raw_input().split())
    tako(x,a,b)

def tako(x,a,b):
    book_list = range(1,x + 1)
    for i in xrange(len(a)):
        for j in xrange(x):
            if book_list[j] == a[i]:
                book_list[j] = 0
    for i in xrange(len(b)):
        for j in xrange(x):
            if book_list[j] == b[i]:
                ans.append(book_list[j])
    if len(ans) == 0:
        print "None"
    else:
        ans.sort()
        for i in xrange(len(ans)):
            print ans[i],


if __name__ == "__main__":
    inp()

