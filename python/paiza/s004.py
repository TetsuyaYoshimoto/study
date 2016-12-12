
def inp():
    a,b,word = [], [], []
    tmp = raw_input()
    for i in xrange(len(tmp)): a.append(tmp[i])
    tmp = raw_input()
    for i in xrange(len(tmp)): b.append(tmp[i])
    tmp = raw_input()
    for i in xrange(len(tmp)): word.append(tmp[i])

    syori(a,b,word)

def syori(a,b,word):
    count = 0
    print a, b, word
    for i in xrange(len(word)):
        try:
            print a.index(word[i])
            count += a.index(word[i])
            for i in xrange(a.index(word[i])):
                del a[0]
        except:
            print b.index(word[i])
            count += b.index(word[i])
            for i in xrange(b.index(word[i])):
                del b[0]
        print a,b,word
    print  count

if __name__ == "__main__":
    inp()

