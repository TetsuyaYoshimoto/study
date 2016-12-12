#encoding=utf-8

def factorization(n):
    def factor_sub(n, m):
        c = 0
        while n % m == 0:
            c += 1
            n /= m
        return c, n
    
    buff = []
    c, m = factor_sub(n, 2)
    if c > 0: buff.append((2, c))
    c, m = factor_sub(m, 3)
    if c > 0: buff.append((3, c))
    x = 5
    while m >= x *x:
        c, m = factor_sub(m, x)
        if c > 0: buff.append((x, c))
        if x % 6 == 5:
            x += 2
        else:
            x += 4
    if m > 1: buff.append((m, 1))
    return buff


def div_sum_sub(p, n):
    a = 0
    while n > 0:
        a += p ** n
        n -= 1
    return a + 1

def divisor_sum(n):
    a = 1
    for p, q in factorization(n):
        a *= div_sum_sub(p, q)
    return a

if __name__ == "__main__":
    x = input()
    for i in xrange(x):
        num = input()
        ans = divisor_sum(num) - num
        if ans == num:
            print "perfect"
        elif ans == abs(num - 1):
            print "nearly"
        else:
            print "neither"



