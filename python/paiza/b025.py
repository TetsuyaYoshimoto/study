#encoding=utf-8
count = 0
N,M,K = map(int,raw_input().split())
setp, posi, fe = [], [], []
for i in xrange(N):
    posi.append(0)
    fe.append(0)
for i in xrange(M): posi[input() - 1] = 1
print posi
print ""


for hoge in xrange(K):
    try:
        for i in xrange(N):
            print "i = " + str(i)
            if posi[i] == 1:
                for j in xrange(i+1,N):
                    if posi[j] == 0:
                        print i,j
                        count += 1
                        fe[i], fe[j] = 0, 1
                        print fe, posi
                        break

                    if j == N - 1:
                        for j in xrange(0,i-1):
                            if posi[j] == 0:
                                count += 1
                                fe[i], fe[j] = 0, 1
                                print fe, posi
                                break
            if count == M:
                count = 0
                posi = fe
                fe = []
                break
    except:
        pass
    print ""

print posi

for i in xrange(N):
    if posi[i] == 1:
        print i + 1



