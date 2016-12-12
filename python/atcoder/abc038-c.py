
tako = input()
count = tako
num = map(int, raw_input().split())

for i in xrange(tako - 1):
    for j in xrange(i,tako - 1):
        if num[j] > num[j+1] or num[j] == num[j+1]:
            break
        else:
            if num[i] <= num[j]:
                count += 1
            else: break
print count

