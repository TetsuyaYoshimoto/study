

num = []
tako = input()
for i in xrange(tako):
    num.append(map(int ,raw_input().split()))
num = sorted(num)
#print num
count, flag = [1]*tako, 0

for j in xrange(tako - 1):
    for i in xrange(j,tako - 1):
        if flag == 0:
            num1 = num[i]

#        print num1[0], num1[1]
#        print num1[0],num[i+1][0],num1[1],num[i+1][1]
        if num1[0] < num[i+1][0] and num1[1] < num[i+1][1]:
#            print "YES"
            count[j] += 1
            flag = 0
        else:
            flag = 1
#    print ""

print max(count)


