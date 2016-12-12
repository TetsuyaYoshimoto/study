#encoding=utf-8

def is_prime(q):
	q = abs(q)
	if q == 2: return True
	if q < 2 or q&1 == 0: return False
	return pow(2, q-1, q) == 1
					 
if __name__ == "__main__":
	prime, i = [], 1
	while True:
		i += 1
		if is_prime(i) == True:
			prime.append(i)
		if len(prime) == 10000:
			break

	while True:
		x = input()
		if x == 0:
			break
		print sum(prime[:x])

# 	while True:
# 		x = input()
# 		if x == 0:
# 			break
# 		i, ans = 1, 0
# 		for j in xrange(x):
# 			while True:
# 				i += 1
# 				if is_prime(i) == True:
# 					ans += i
# 					break
# 				else: pass
# 		print ans

