#encoding=utf-8

ans = 0
x = input()
for i in xrange(x):
	word = map(str,raw_input().split())
	if len(word[0]) == len(word[1]):
		if word[0] == word[1]:
			ans += 2

		else:
			for j in xrange(len(word[0])):
				if word[0][j] != word[1][j]:
					ans += 1

					for k in xrange(len(word[0]) - j - 1):
						if word[0][k + j + 1] != word[1][k + j + 1]:
							ans -= 1
							break
					break


	else:
		pass

print ans
