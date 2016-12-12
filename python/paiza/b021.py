

def inp():
    for i in xrange(input()):
        word = raw_input()
        print hantei(word)

def hantei(word):
    flag = word[len(word)-2] + word[len(word)-1]
    if word[-1] == "s" or word[-1] == "o" or word[-1] == "x" or flag == "sh" or flag == "ch":
        ans = word + "es"
    elif flag == "fe":
        ans = word[0:len(word)-2] + "ves"
    elif word[-1] == "f":
        ans = word[0:len(word)-1] + "ves"
    elif word[-1] == "y":
        if word[-2] == "a" or word[-2] == "i" or word[-2] == "u" or word[-2] == "e" or word[-2] == "o":
            ans = word + "s"
        else:
            ans = word[0:len(word) - 1] + "ies"
    else:
        ans = word + "s"

    return ans

if __name__ == "__main__":
    inp()



