#encoding=utf-8

me,ans = [],[]
x = input()
y = input()
for i in xrange(y):
    me.append(map(int,raw_input().split(",")))

for i in xrange(x):
    i += 1
    for j in xrange(y):
        if i == me[j][0]:
            i = me[j][1]
        elif i == me[j][1]:
            i = me[j][0]

    ans.append(i)
for i in xrange(x):
    for j in xrange(x):
        if i + 1 == ans[j]:
            print j + 1

