
def fibo(n):
    result = []
    a,b = 1,1

    while b < n:
        result.append(b)
        val = a + b
        b = a
        a = val
    return result


