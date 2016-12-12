import sys

num = input()
row = map(int, raw_input().split())
col = map(int, raw_input().split())
for i in range(num):
    ans = []
    cout = 0
    for j in range(num):
        if cout == num - 1:
            print col[i] + row[j]
        else:
            sys.stdout.write(str(col[i] + row[j]) + " ")
        cout += 1
                                                                            
