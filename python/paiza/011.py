
def inp():
    a,b = map(int, raw_input().split())
    go = []
    for i in xrange(b):
        go.append(input())
    tako(go, 0, len(go))

def tako(go, index, le):
    if le != index + 1:
        return tako(go, index + 1, le)

    print go[index], index, le



if __name__ == "__main__":
    inp()

