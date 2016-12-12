#encoding=utf-8
import sys

def inp():
    for line in sys.stdin:
        i = 1
        while True:
            if is_prime(int(line[:-1]) - i) == True:
                print (int(line[:-1]) - i),
                break
            else:
                i += 1
        i = 1
        while True:
            if is_prime(int(line[:-1]) + i) == True:
                print (int(line[:-1]) + i)
                break
            else:
                i += 1

def is_prime(q):
    q = abs(q)
    if q == 2: return True
    if q < 2 or q&1 == 0: return False
    return pow(2, q-1, q) == 1
             
if __name__ == "__main__":
    inp()

