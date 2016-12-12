#encoding=utf-8
import sys

def inp():
    for line in sys.stdin:
        word = line.split()
        je(word[0])

def je(word):
    ans, i = 0, 0
    while True:
        if word[i] == "M":
            ans += 1000
        elif word[i] == "D":
            ans += 500
        elif word[i] == "C":
            ans += 100
            try:
                if word[i + 1] == "M":
                    ans += 800
                    i += 1
                elif word[i + 1] == "D":
                    ans += 300
                    i += 1
            except: pass

        elif word[i] == "L":
            ans += 50
        elif word[i] == "X":
            ans += 10
            try:
                if word[i + 1] == "C":
                    ans += 80
                    i += 1
                elif word[i + 1] == "L":
                    ans += 30
                    i += 1
            except: pass

        elif word[i] == "V":
            ans += 5
        elif word[i] == "I":
            ans += 1
            try:
                if word[i + 1] == "X":
                    ans += 8
                    i += 1
                elif word[i + 1] == "V":
                    ans += 3
                    i += 1
            except: pass

        i += 1
        if i == len(word):
            print ans
            break

if __name__ == "__main__":
    inp()

# 1   I     11  XI      30      XXX 
# 2   II    12  XII     40      XL  
# 3   III   13  XIII    50      L   
# 4   IV    14  XIV     60      LX  
# 5   V     15  XV      70      LXX 
# 6   VI    16  XVI     80      LXXX    
# 7   VII   17  XVII    90      XC  
# 8   VIII  18  XVIII   100     C   
# 9   IX    19  XIX     500     D   
# 10  X     20  XX      1000    M

