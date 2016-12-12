#encoding=utf-8

import sys

def inp():
    word = []
    for line in sys.stdin:
        word = map(int, line.split(","))
        syori(sorted(word))

def syori(word):
    flag = [0,0]
    if sum(word[1:5]) == 46:
        word.append(int(word[0]))
        del word[0]

    if word == [10,11,12,13,1]:
        print "straight"
        
    else:
        for j in xrange(1,14):
            if word.count(j) == 2:
                flag[0] += 1
            elif word.count(j) == 3:
                flag[1] += 1
            elif word.count(j) == 4:
                print "four card"
                flag = [10,10]
                break
            elif word[0] + 2 == word[1] + 1 == word[2] == word[3] - 1 == word[4] - 2:
                print "straight"
                flag = [10,10]
                break

        if flag[0] == flag[1] == 1:
            print "full house"
        elif flag[0] == 1:
            print "one pair"
        elif flag[0] == 2:
            print "two pair"
        elif flag[1] == 1:
            print "three card"
        elif flag[0] < 1 or flag[1] < 1:
            print "null"

if __name__ == "__main__":
    inp()
   
