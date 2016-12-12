#encoding=utf-8

ans = 0

x = input()
for i in xrange(x):
	day,buy = map(str,raw_input().split())
	if day.find("3") != -1:
		ans += int(int(buy)*0.03)
	elif day.find("5") != -1:
		ans += int(int(buy)*0.05)
	else:
		ans += int(int(buy)*0.01)
print ans

