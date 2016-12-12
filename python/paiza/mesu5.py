


def syori():
    num, ans = input(), []
    for i in range(len(str(num)) + 1):
        a = round(num*(0.1**i))*10**i
        ans.append(int(a))
    return ans, str(num)

def syori1(num):
    ans = []
    for i in range(len(str(num)) + 1):
        a = round(num*(0.1**i))*10**i
        ans.append(int(a))
    return ans

def main():
    ans, num = syori()
    ansmax = [max(ans)]
    count = 0
    while count < len(num):
        for i in ans:
            ans = syori1(i)
            ansmax.append(max(ans))
        count += 1
    print max(ansmax)

if __name__ == "__main__":
    main()


