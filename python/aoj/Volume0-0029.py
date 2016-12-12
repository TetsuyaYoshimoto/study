#encoding=utf-8
#
# import statistics as st
# word1 = []
# word = raw_input().split()
# for i in xrange(len(word)):
# 	word1.append(len(word[i]))
# for i in xrange(len(word)):
# 	if len(word[i]) == max(word1):
# 		print st.mode(word), word[i]
# 		break


s = raw_input().split()
maxLength, maxCount = 0, 0
word1, word2, count = "", "", {}
for i in range(len(s)):
	count[s[i]] = 0
for i in range(len(s)):
	count[s[i]] += 1
	if(len(s[i]) > maxLength):
		maxLength = len(s[i])
		word2 = s[i]
for i in range(len(s)):
	if(count[s[i]] > maxCount):
		maxCount = count[s[i]]
		word1 = s[i]
print word1, word2

