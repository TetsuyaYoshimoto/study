#encoding=utf-8
fe = []
ans1,num = [],0
tako1,tako2 = 0,0
x,y=map(int,raw_input().split())
for i in xrange(y):
	fe.append(input())

for i in xrange(y-x+1):
	ans1.append(sum(fe[tako1:tako1 + x]))
	tako1 += 1
print max(ans1)

		
