
for i in xrange(input()):
    word = map(str,raw_input().split())
    for j in xrange(len(word)):
        if word[j] == "Hoshino":
            print "Hoshina",
        else:
            print word[j],
    print ""


