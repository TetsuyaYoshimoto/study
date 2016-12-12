#encoding=utf-8

word = raw_input()
word = word[:-1].split()
for i in xrange(len(word)):
	if word[i] == "apple":
		word[i] = "peach"
	elif word[i] == "peach":
		word[i] = "apple"

for i in xrange(len(word) - 1): print word[i],
print word[len(word) - 1] + "."

#word.replace(n,m)*3

