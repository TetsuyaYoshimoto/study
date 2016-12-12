#encoding=utf-8
#
# import sys
# printf = sys.stdout.write
#
# def inp():
#     word = []
#     x = input()
#     for i in xrange(x):
#     	w = raw_input().split()
#         for j in xrange(len(w)):
#             if len(w[j]) == 4:
#                 word.append(w[j])
#         A, B = syori(word)
#
#     for i in xrange(len(w)):
#         for j in xrange(len(w[i])):
#             printf(chr(((A*(ord(w[i][j]) - 97) - B) % 26) + 97))
#         print " ",
#
#
# def syori(w):
#     tako, ans = [], []
#     for A in xrange(1,26,2):
#         for B in xrange(26):
#             for i in xrange(len(w)):
#                 for j in xrange(len(w[i])):
#                     tako.append(chr(((A*(ord(w[i][j]) - 97) - B) % 26) + 97))
#             for j in xrange(len(w)):
#                 ans.append("".join(tako[0+4*j:(j+1)*4]))
#             for k in xrange(len(ans)):
#                 if ans[k] == "this" or ans[k] == "this":
#                     return A,B
#                 elif ans[k] == "that" or ans[k] == "that":
#                     return A,B
#
#             tako, ans = [], []
#
# if __name__ == "__main__":
#     inp()

def gcd(a,b): return a if b == 0 else gcd(b,a%b)
def lcm(a,b): return a*b/gcd(a,b)

for h in range(input()):
	tmp = raw_input()
	for a in range(26):
		if gcd(a,26)!=1:
			continue
		for b in range(26):
			s = ""
			for q in tmp:
				if q.isalpha():
					s += chr((((ord(q)-97)*a+b)%26)+97)
				else:
					s += q
			if ("that" in s)or("this" in s):
				print s


