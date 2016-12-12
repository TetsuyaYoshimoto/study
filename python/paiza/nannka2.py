#encoding=utf-8

inp = input()
ans = 0
for i in xrange(inp):
	num = map(int, raw_input().split())
	if num[0] > num[1]:
		ans += (num[0] - num[1])*num[2]

print ans



