#encoding=utf-8
import sys

def inp():
    for line in sys.stdin:
        word = str(line[:-1])
        while True:
            tako = []
            for i in xrange(len(word) - 1):
                a = str(eval(word[i] + "+" +  word[i+1]))
                tako.append(a[-1])
            word =  "".join(tako)
            if len(word) == 1:
                break
        print word

if __name__ == "__main__":
    inp()



