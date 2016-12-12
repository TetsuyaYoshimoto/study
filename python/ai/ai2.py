#encoding=utf-8

import MeCab
mt = MeCab.Tagger("-Ochasen")

while True:
    msg = raw_input("あなた : ")
    res = mt.parseToNode(msg)
    if msg == "end" or msg == "エンド":
        print "終了します。"
        break

    print msg + "\n"

    while res:
        arr = res.feature.split(",")
        if arr[0] == "BOS/EOS":
            pass
        else: 
            print res.surface + " \t" + "品詞 : " + arr[0]

        res = res.next

    print ""

