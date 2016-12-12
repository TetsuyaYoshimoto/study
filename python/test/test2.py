

#-*- using:utf-8 -*-
import time

def keisoku(a):
    start = time.time()
    for i in xrange(100):
        for j in xrange(100):
            for k in xrange(100):
                print a[i][j][k]

    elapsed_time = time.time() - start
    print ("elapsed_time:{0}".format(elapsed_time)) + "[sec]"


    start = time.time()
    for i in xrange(100):
        for k in xrange(100):
            for j in xrange(100):
                print a[i][j][k]

    elapsed_time = time.time() - start
    print ("elapsed_time:{0}".format(elapsed_time)) + "[sec]"

    start = time.time()
    for j in xrange(100):
        for k in xrange(100):
            for i in xrange(100):
                print a[i][j][k]

    elapsed_time = time.time() - start
    print ("elapsed_time:{0}".format(elapsed_time)) + "[sec]"


if __name__=="__main__":
    a=[[[0]*100]*100]*100
    keisoku(a)

