
inp, ans = raw_input().split("/"), []
for i in range(len(inp)):
    ans += inp[i].split()
inp = []
for i in ans:
    if i == ".":
        pass
    elif i == "..":
        inp = inp[::-1]
        inp = inp[1:]
        inp = inp[::-1]
    else:
        inp.append(i)
ans1 = ""
for out in inp:
    ans1 += '/'
    ans1 += out

print ans1
