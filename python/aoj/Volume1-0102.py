
if __name__ == "__main__":
    while True:
        flag = input()
        if flag == 0:
            break
        num, ans = [], [0]*(flag + 1)
        for i in xrange(flag):
            num.append(map(int, raw_input().split()))
        for i in xrange(len(num)):
            for j in xrange(len(num[i])):
                print ("     " + str(num[i][j]))[-4:],
                ans[j] += num[i][j]
            print ("     " + str(sum(num[i])))[-4:]
            ans[j+1] += sum(num[i])

        for i in xrange(flag + 1):
            if i == flag:
                print ("     " + str(ans[i]))[-4:]
            else:
                print ("     " + str(ans[i]))[-4:],



