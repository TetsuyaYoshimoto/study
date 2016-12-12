#encoding=utf-8

import sys

ans ,flag, num = 0, 0, []
for line in sys.stdin:
    word = line[:-1]
    for j in xrange(len(word)):
        try: 
            int(word[j])
            num.append(word[j])
            flag = 1 
        except:
            if flag == 1:
                ans += int("".join(num))
                num = []
                flag = 0
            else: pass
print ans


