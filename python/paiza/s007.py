

def main():
    moji = inputsyori()
    print moji
    moji = syori5(moji, moji, 0)
    print moji
    moji = syori5(moji, moji, 0)
    print moji
#    moji = syori1(moji,moji, 0)
#    print moji


def syori5(moji, hon, flag):
    number = ""
    for i in range(len(moji)):
        if moji[i] == "(":
       #     print moji[i + 1:]
            return syori5(moji[i + 1:], hon, i + flag + 1)
        elif moji[i] == ")":
        #    print "mojiretu : " + moji[:moji.index(")")]
            word, st, en, zzz = moji[:moji.index(")")], hon.index(moji[:moji.index(")")]) - 1, i + flag + 1, 1
            while True:
                try:
                    
                    int(hon[st - zzz])
                    number += hon[st - zzz]
                    zzz -= 1
                except:
                    break
            hon = tume(hon, st, en, word*int(number))
            return hon

def tume(hon, st, en, word):
    print st, en
    print word
    
    ans = ""
    for i in range(len(hon)):
        if st - 1 <= i and i <= en:
            pass    
        elif i == en + 1:
            ans += word
            ans += hon[i]
        else:
            ans += hon[i]
    return ans


def syori1(moji, hon, flag):
    print moji
    count = 0
    for i in moji:
        count += 1
        if i == "(":
            moji = syori1(moji[moji.index("(") + 1:], hon, flag + count)
            return moji
        if i == ")":
            print "mojiretu : " + moji[:moji.index(")")]
            len(moji[:moji.index(")")])
            tanngo = syori2(moji[:moji.index(")")])
            hon = syori4(hon, flag-1, flag+count, tanngo)
            print hon
            return hon

def syori2(moji):
    return syori3(moji, "")

def syori3(moji, ans):
    i = 0
    while moji[i] in ["0","1","2","3","4","5","6","7","8","9"]:
        i += 1
    ans += moji[i]*int(moji[:i])
    if i == 1:
        return ans
    else:
        return syori3(moji[i + 1:], moji[i]*int(moji[:i]))

def syori4(hon, st, en, word):
    ans = ""
    for i in range(len(hon)):
        if st <= i and i <= en:
            pass    
        elif i == en + 1:
            ans += "("
            ans += word
            ans += ")"
            ans += hon[i]
        else:
            ans += hon[i]
    return ans

def inputsyori():
    tango = raw_input()
    return tango

if __name__ == "__main__":
    main()


