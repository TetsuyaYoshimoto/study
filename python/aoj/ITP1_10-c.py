#encoding=utf-8

import sys
import math
printf = sys.stdout.write

while True:
    new_mean = 0
    x = input()
    if x == 0:
        break

    exam = map(int, raw_input().split())
    ave = float(sum(exam))/len(exam)

    for i in range(len(exam)):
        mean = ((exam[i] - ave)**2)
        new_mean += mean/len(exam)
        
    print math.sqrt(new_mean)

