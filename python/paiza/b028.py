#encoding=utf-8
glup,msg = [],[]
x,y,z = map(int,raw_input().split())
ans = []
for i in xrange(y):
    glup.append(map(int,raw_input().split()))
for i in xrange(z):
    msg.append(map(str,raw_input().split()))

for i in xrange(z):

    if msg[i][1] != "0":
        for k  in (glup[int(msg[i][1]) - 1][1:]):
            ans.append([str(k), msg[i][3]])
    else:
        ans.append([msg[i][2], msg[i][3]])
        ans.append([msg[i][0], msg[i][3]])


for i in xrange(x):
    for j in xrange(len(ans)):
        if str(i + 1) == ans[j][0]:
            print ans[j][1]
    if int(ans[j][0]) != i + 1:
        print "--"
