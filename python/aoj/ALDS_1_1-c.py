#encoding=utf-8
 
import sys
num = []
ans = []
def prime(q):
    q = abs(q)
    if q == 2: return True
    if q < 2 or q&1 == 0: return False
    return pow(2, q-1, q) == 1


for i in sys.stdin:
    inp = map(int , i.split())
    if prime(inp[0]):
        num.append(inp)
num.sort()

for i in xrange(1, len(num)):
    if num[i - 1] != num[i]:
        ans.append(num[i][0])
print len(ans) + 1
