#encoding=utf-8
import sys

def inp():
    fe, fe1,count = [], [], 0
    for line in sys.stdin:
        fe += line.split()
        count += 1
        if count%9 ==0:
            print fe
            a(fe)
            fe = []
    print fe
    a(fe)

def a(fe1):
    for i in xrange(8):
        for j in xrange(8):
            if fe1[i][j] == "1":
                try:
                    if fe1[i][j+1]==fe1[i+1][j]==fe1[i+1][j+1]=="1": print "A"
                    if fe1[i+1][j]==fe1[i+2][j]==fe1[i+3][j]=="1": print "B"
                    if fe1[i][j+1]==fe1[i][j+2]==fe1[i][j+3]=="1": print "C"
                    if fe1[i+1][j-1]==fe1[i+1][j]==fe1[i+2][j-1]=="1": print "D"
                    if fe1[i][j+1]==fe1[i+1][j+1]==fe1[i+1][j+2]=="1": print "E"
                    if fe1[i+1][j]==fe1[i+1][j+1]==fe1[i+2][j+1]=="1": print "F"
                    if fe1[i][j+1]==fe1[i+1][j-1]==fe1[i+1][j]=="1": print "G"
                except: pass

if __name__ == "__main__":
    inp()


