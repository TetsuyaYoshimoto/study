#encoding=utf-8

x = input()
set1,set2 = 0,0

for i in xrange(x):
    tako = raw_input().split()
    if tako[0] == "SET":
        if tako[1] == "1":
            set1 = int(tako[2])
        elif tako[1] == "2":
            set2 = int(tako[2])

    elif tako[0] == "ADD":
        set2 = set1 + int(tako[1])

    elif tako[0] == "SUB": 
        set2 = set1 - int(tako[1])
print set1,set2


