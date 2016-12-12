
import os
import csv
import MeCab
import re

def main():
    dirname = os.path.dirname(os.path.abspath(__file__)) + "/"

    tagger = MeCab.Tagger("-Owakati")
    f_out = open(dirname + "output.txt", "w")
    f_in = open(dirname + "/tweets.csv", "r")



    for line in csv.reader(f_in):
        line = line[5]
        line = re.sub('https?://,*', '', line)
        f_out.write(tagger.parse(line))
    f_out.close()

if __name__ == "__main__":
    main()



