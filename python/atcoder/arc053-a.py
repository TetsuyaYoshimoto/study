
def inp():
    a,b = map(int, raw_input().split())
    if a == b == 1: return 0
    if a == 1:
        return syori(b)
    elif b == 1:
        return syori(a)
    else: return syori(a)*b + syori(b)*a

def syori(a):
    if a != 1:
        return a - 1
    else:
        return a

if __name__ == "__main__":
    print inp()

