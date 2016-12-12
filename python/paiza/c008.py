#encoding=utf-8
a,b = map(str,raw_input().split())
word = raw_input()

tako = 0
tako2 = 0

for h in xrange(10):
    if word.find(a) != -1:
        if word.find(a,tako) < 0:
            break

        tako = word.find(a,tako)+ len(a)
        tako2 = word.find(b,tako)
        if tako == tako2:
            print "<blank>"
            break 
        print word[tako:tako2] 
    else:
        print "<blank>"
        break

