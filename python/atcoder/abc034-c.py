#encoding=utf-8
import math

x,y = map(int, raw_input().split())
ans = math.factorial(x+y - 2) / (math.factorial(x - 1) * math.factorial(y - 1))
print ans % 1000000007

