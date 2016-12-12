#encoding=utf-8

def inp(i):
    split_word = i.split()
    return split_word

def rot(split_word):
    for i in xrange(len(split_word)):
        tako = ""
        if len(split_word[i]) == 4 or len(split_word[i]) == 3:
            num = ord(split_word[i][0]) - ord("t")
            for j in xrange(len(split_word[i])):
                tako +=  chr(ord(split_word[i][j]) - num)
            if tako == "that" or tako == "the" or tako == "this":
                return proce(split_word, num)
        else:
            pass
        num = 0

def proce(split_word, num):
    ans = ""
    for i in xrange(len(split_word)):
        for j in xrange(len(split_word[i])):
            if split_word[i][j] < ord("a") or ord("z") < split_word[i][j]:
                ans += split_word[i][j]
            else:
                ans += str(chr(ord(split_word[i][j]) - num))
        ans += " "
    return ans


# if __name__ == "__main__":
#     import sys
#     for i in sys.stdin:
#         word = inp(i)
#         ans = rot(word)
#         print ans[0:(len(ans) - 1)]

if __name__ == "__main__":
    import sys, string
    alpha = 'abcdefghijklmnopqrstuvwxyza'
    tbl = string.maketrans(alpha[:-1], alpha[1:])
    print alpha[:-1]
    print alpha[1:]
    print tbl
    for s in sys.stdin:
        while not('the' in s or 'this' in s or 'that' in s):
            s = s.translate(tbl)
            print s[:-1]
