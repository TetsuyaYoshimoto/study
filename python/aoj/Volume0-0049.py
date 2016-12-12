#encoding=utf-8

import sys
import collections as col
num = []
for line in sys.stdin:
	tako = line[:-1].split(",")
	num.append(tako[1])
tako = col.Counter(num)
a = tako["O"]
tako["O"] = tako["AB"]
tako["AB"] = a
for i in tako.items():
	print i[1]

