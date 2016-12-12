#encoding=utf-8

import itertools as iter

en = ["+", "-", "*", "/"]
en1 = ["(","(","(",")",")",")"]
tako = map(str,raw_input().split())

for ele in iter.combinations_with_replacement(en,3):
    for i in xrange(3): tako.insert(0,ele[i])
    for i in xrange(6): tako.insert(0,en1[i])
    for li in iter.permutations(tako,len(tako)):
        tako1 = "".join(li)
        try:
            if eval(tako1) == 10:
                print tako1,eval(tako1)
                break
        except: pass
    if eval(ako1) == 10:
        break
    for j in xrange(9): del tako[0]

