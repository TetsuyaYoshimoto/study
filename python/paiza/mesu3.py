
n = input()
cap = []
for _ in range(n):
    cap.append(map(int, raw_input().split()))
m = input()
for _ in range(m):
    num, kosu = map(int, raw_input().split())
    if cap[num - 1][1] <= kosu:
        print cap[num - 1][0]*kosu - cap[num - 1][2]*(kosu/cap[num - 1][1])
    else:
        print cap[num - 1][0]*kosu


