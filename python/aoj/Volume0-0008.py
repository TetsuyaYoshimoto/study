#encoding=utf-8

import sys

def output(x):
	count = 0
	for i in xrange(10):
		for j in xrange(10):
			for k in xrange(10):
				for l in xrange(10):
					if i+j+k+l == x:
						count += 1
	print count


if __name__ == "__main__":

	for i in sys.stdin:
		num = int(i)
		output(num)

