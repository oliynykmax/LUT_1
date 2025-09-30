def isperfect(n: int) -> bool:
    if n < 2:
        return False
    s = 1  # 1 always a divisor
    i = 2
    while i * i <= n:
        if n % i == 0:
            s += i
            if i != n // i:  # avoid double-counting square root
                s += n // i
        i += 1
    return s == n


for i in range(1, 1000000000):
    if isperfect(i):
        print(i)
