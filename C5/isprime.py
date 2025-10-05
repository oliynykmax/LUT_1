def isprime(n):
    if n < 2:
        return False
    i = 2
    while i * i <= n:
        if n % i == 0:
            return False
        i += 1
    return True


for i in range(-5, 100):
    if isprime(i):
        print(i)
