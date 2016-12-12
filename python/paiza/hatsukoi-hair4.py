
flag = 0
for i in xrange(5):
    num = raw_input().split()
    if num[0] != num[1]: flag += 1
    else: pass
if flag == 0:
    print "OK"
else:
    print "NG"
