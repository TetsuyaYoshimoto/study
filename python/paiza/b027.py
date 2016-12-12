#encoding=utf-8
trump, te, ans = [],[],[]
count = 0
H,W,N = map(int,raw_input().split())
for i in xrange(H):
    trump.append(map(int,raw_input().split()))
L = input()
for i in xrange(L):
    te.append(map(int,raw_input().split()))
for i in xrange(N):
    ans.append(0)

# print ans
# print trump
# print te
for i in xrange(L):
#    print trump[te[i][0] - 1][te[i][1] - 1], trump[te[i][2] - 1][te[i][3] - 1]
    if trump[te[i][0] - 1][te[i][1] - 1] == trump[te[i][2] - 1][te[i][3] - 1]:
        trump[te[i][0] - 1][te[i][1] - 1],trump[te[i][2] - 1][te[i][3] - 1] = 0,0
        ans[i % N] += 2

        for j in xrange(H):
            for k in xrange(W):
                if trump[j][k] == 0:
                    count += 1
        if H*W - count == 2:
            ans[i % N] += 2
            break
    count = 0

for i in xrange(N):
    print ans[i]

