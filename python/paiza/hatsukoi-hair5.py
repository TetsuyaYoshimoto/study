
import sys
printf = sys.stdout.write

f1, f2 = input(), input()
x = ["-"]*f1
if f1 == f2:
    x.insert(f2,"+")
else:
    x.insert(f2-1,"+")
s = ""
for i in xrange(len(x) - 1):
    printf(str(x[i]))
print x[len(x)-1]

