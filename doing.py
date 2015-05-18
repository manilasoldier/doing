from math import floor, sqrt, ceil

def gsieve(n):
	m=floor(n/2)-1
	sequence=[True]*m; yield 2
	for i in range(3, int(sqrt(n))+1, 2):
		sequence[((i**2-3)//2)::i]=[False]*ceil((n-i**2)/(2*i))
	for j, prime in enumerate(sequence):
		if prime: yield 2*j+3
		
def lsieve(n):
	return list(gsieve(n))

