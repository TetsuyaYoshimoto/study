#encoding=utf-8
ans = []
word = raw_input()
ans.append(word.count("c"))
ans.append(word.count("a"))
ans.append(word.count("t"))
mi = min(ans)

for i in xrange(3):
    ans[i] = ans[i] - mi
ma = max(ans)

for j in xrange(3):
    ans[j] = ma - ans[j]

print mi
for i in xrange(3):
    print ans[i]

