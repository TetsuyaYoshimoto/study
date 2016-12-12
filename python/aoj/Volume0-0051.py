#encoding=utf-8

# for i in xrange(input()):
# 	n = sorted(raw_input())
# 	x = int("".join(n[::-1]))
# 	for j in xrange(len(n)):
# 		if n[i] == "0": del n[i]
# 		else: break
# 	print x - int("".join(n))

for i in xrange(input()):
	s = sorted([s for s in raw_input()])
	print int("".join(reversed(s))) - int("".join(s))


