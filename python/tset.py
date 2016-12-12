
data = map(str, raw_input().split())
num = len(data)
for i in range(num):
    try:
        data[i] = int(data[i])
        if data[i] == 2:
            data[i] = 14
    except:
        if data[i] == "K":
            data[i] = 13
        elif data[i] == "J":
            data[i] = 11
        elif data[i] == "Q":
            data[i] = 12
        elif data[i] == "A":
            data[i] = 15


ans, flag, count = [], data[0], 1
for _ in range(num - 1):
    ans.append(0)

del data[0]
print data
for _ in range(2):
    for i in range(num - 1):
        if ans[i] == 0:
            if data[i] > flag:
                flag1 = i
                print "flga1" + str(flag1)
                count += 1
                print "count: " + str(count) + str("  flag: ") + str(flag) + "  data[i] :" + str(data[i])
                flag = data[i]
                data[i], ans[i] = 0, count
        elif flag1 == i:
            print "tako"
            flag = 0


print " "
print " "
print data
print ""
print 1
print ans
print " "
print 
