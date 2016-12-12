word = map(str, raw_input().split())
eco = raw_input()
number = raw_input()
ans = ""
if eco == "encode":
    for i in range(len(number)):
        for j in range(10):
            if number[i] == str(j):
                ans += word[j]

else:
    for i in range(len(number)):
        for j in range(10):
            if number[i] == word[j]:
                ans += str(j)
print ans
                                                                                        
