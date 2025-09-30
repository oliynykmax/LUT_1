def isarmstrong(n):
    if n < 0:
        return False
    power = len(str(n))
    check = 0
    for i in range(power):
        check += int(str(n)[i]) ** power
    return check == n
