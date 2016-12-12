#encoding=utf-8
x,y = map(int, raw_input().split())
i = 1
while True:
    if x*i >= y:
        break
    else: i += 1
print i



