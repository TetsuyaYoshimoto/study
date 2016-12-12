#encoding=utf-8

H, W, N = 0, 0, 0
st_x, st_y = 0, 0
go_x, go_y = 0, 0

def insyo():
    global H, W, N
    H,W,N = map(int, raw_input().split())
    fieeld = []
    for i in range(H):
        fieeld.append(raw_input())
    global st_x, st_y
    st_x, st_y = map(int, raw_input().split())
    st_x, st_y = st_x - 1, st_y - 1
    global go_x, go_y
    go_x, go_y = map(int, raw_input().split())
    go_x, go_y = go_x - 1, go_y - 1
    return fieeld

def saitan(fi):
    print fi
    ans = []
    i, j = st_x, st_y
    #右に行けるだけ右に行く
    while True:
         try:
             if fi[i][j + 1] != "#":
                 j += 1
                 ans += "R"
         except: break
    if i == go_x and j == go_y:
        return ans
    #下に行けるだけ下に行く
    while True:
        try:
            if fi[i + 1][j] != "#":
                i += 1
                ans += "D"
        except: break
    if i == go_x and j == go_y:
        return ans

    #左へ行けるだけ左へ行く
    while True:
        try:
            if fi[i][j - 1] != "#":
                j -= 1
                ans += "L"
        except: break
    if i == go_x and j == go_y:
        return ans

    #上へ行けるだけ上に行く
    while True:
        try:
            if fi[i - 1][j] != "#":
                i -= 1
                ans += "U"
        except: break
    if i == go_x and j == go_y:
        return ans
    
    return ans

def main():
    fi = insyo()
    print saitan(fi)


if __name__=="__main__":
    main()
