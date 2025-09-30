def yearsize(n):
    if n % 100 == 0 and n % 400 != 0:
        return 365
    return (366 * (n % 4 == 0)) + (365 * (n % 4 != 0))


print(yearsize(1900))
