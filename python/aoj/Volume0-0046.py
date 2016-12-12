#encoding=utf-8
# import sys
# num = []
# for i in sys.stdin: num.append(float(i))
# print max(num) - min(num)

import sys
i = sorted(map(float, sys.stdin))
print i[-1] - i[0]
