#encoding=utf-8
import pandas as pd
from sklearn import linear_model
import math as ma

data = pd.read_csv("logstic.csv")
print data

logiReg = linear_model.LogisticRegression()

y = data["a"]
x = data[["b","c"]]

# logstic解析
# linear_model.LogisticRegression.fit(x,y)
logiReg.fit(x,y)
a,b,c = -13.60011, 0.02811, 0.03377
print [[b,c]]
print [a]
print logiReg.score(x,y)

print ""

#odds評価,精度評価
count = 0.0

for i in xrange(20):
    f1,f2 = map(float, raw_input().split())
    y = ma.exp(a+f1*b+f2*c)
    if y > 0.5:
        print 1,data["a"][i],
        if data["a"][i] == 1:
            print "Yes"
            count += 1
        else: print "No"
    else:
        print 0,data["a"][i],
        if data["a"][i] == 0:
            print "Yes"
            count += 1
        else: print "No"

print ""
print count/20

