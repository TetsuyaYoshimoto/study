#encoding=utf-8
x,y,xi,yi = [0],[0],[],[]
x1,y1,z,n = map(int,raw_input().split())
x.append(x1)
y.append(y1)
for i in xrange(n):
	k,num = map(int,raw_input().split())
	if k == 0:
		for j in xrange(len(x)):
			if x[j] > num:
				x.insert(j,num)
				break
	elif k == 1:
		for j in xrange(len(y)):
			if y[j] > num:
				y.insert(j,num)
				break
		pass

for i in xrange(len(x) - 1):
	xi.append(x[i + 1] - x[i])
for i in xrange(len(y) - 1):
	yi.append((y[i + 1] - y[i]))

print min(xi)*min(yi)*z

