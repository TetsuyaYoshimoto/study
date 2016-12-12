#encoding=utf-8
import sys
printf = sys.stdout.write

word = raw_input()

for i in xrange(len(word)):
    if word[i] == "a" or word[i] == "A":
        printf("4")
    elif word[i] == "e" or word[i] == "E":
        printf("3")
    elif word[i] == "g" or word[i] == "G":
        printf("6")
    elif word[i] == "i" or word[i] == "I":
        printf("1") 
    elif word[i] == "o" or word[i] == "O":
        printf("0")
    elif word[i] == "s" or word[i] == "S":
        printf("5")
    elif word[i] == "z" or word[i] == "Z":
        printf("2")
    else:
        printf(word[i])

