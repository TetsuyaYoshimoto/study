
import itertools as it
num1, num2 = 0, []

def inp():
    n = input()
    num = (map(int, raw_input().split()))
    num1 = num
    m = input()
    for i in xrange(m):
        num2.append(map(int, raw_input().split()))
    ans, tako = [], []
    ans.append(num)
    for i in it.permutations(range(1,m+1),m):
        for j in xrange(m):
            tako.append(i[j]-1)
        for i in tako:
            ans1 = [0]*n
            for j in xrange(n):
                ans1[num2[i][j] - 1] = num1[j]
            num1 = ans1
            ans.append(num1)
        tako, num1 = [], num
    output(min(ans),n)

def output(a,n):
    import sys
    printf = sys.stdout.write
    for i in a[0:n-1]:
        printf(str(i)+" ")
    printf(str(a[n-1]))
    print ""


if __name__ == "__main__":
    inp()

