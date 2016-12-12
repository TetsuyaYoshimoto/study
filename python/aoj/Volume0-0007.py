#encoding=utf-8

inp = input()
x = 100000
for i in xrange(inp):
	x = x * 1.05
	if int(x % 1000) != 0:
		x += 1000 - int(x % 1000)

print int(x)



