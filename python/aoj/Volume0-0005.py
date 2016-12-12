#encoding=utf-8


import sys
for i in sys.stdin:
    m, n = map(int, i.split())
    t1, t2 = m, n
    while True:
        if m % n == 0:
            break
        m, n = n, m % n
    a = n
    b = (t1/ a) * t2
    print("{} {}".format(a, b))


