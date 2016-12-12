#encoding=utf-8

import sys

printf = sys.stdout.write

word = raw_input()
x = input()

ins = []
for i in range(x):
    ins = map(str, raw_input().split())
    if ins[0] == "replace":
        num = (int(ins[2]) - int(ins[1]) + 1)
        for j in range(num):
            word = word.replace(word[int(ins[1]) + j], ins[3][j], 1)
        print word
    elif ins[0] == "reverse":
        a = -(int(ins[1]) + len(word) + 1)
        b = -(int(ins[2]) + 1)
        new_word = list(word[b:a:-1])
        num = (int(ins[2]) - int(ins[1]) + 1)
        for j in range(num):
            print word[int(ins[1]) + j]
            print new_word[j]
            word = word.replace(word[int(ins[1]) + j], new_word[j], 1)
            print word

    #elif ins[0] == "print":

print word
