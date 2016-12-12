#encoding=utf-8
x = input()
fe1, fe2, count = [], [], 0
for i in xrange(x):
    fe1.append(map(str, raw_input().split()))
y = input()
for i in xrange(y):
    fe2.append(map(str, raw_input().split()))

for i in xrange(x):
    for j in xrange(x):
        if fe1[i][j] == fe2[0][0]:
            try:
                for k in xrange(y):
                    for l in xrange(y):
                        if fe1[i + k][j + l] == fe2[k][l]:
                            count += 1
                            if count == y**2: break
                    if count == y**2: break
            except:
                pass
        if count == y**2: break
        count = 0
    if count == y**2: break
print i, j
