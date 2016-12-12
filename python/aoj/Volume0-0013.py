#encoding=utf-8

stac, car_in, ans = [], [], []
while True:
    try:
        stac.append(input())
    except:
        break

z = len(stac)
for i in xrange(z):
    if stac[i] != 0:
        car_in.insert(0,stac[i])
    elif stac[i] == 0:
        ans.append(car_in[0])
        del car_in[0]

for i in xrange(len(ans)):
    print ans[i]


