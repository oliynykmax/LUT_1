def ator(n):
    if not (0 < n < 4000):
        return None
    result = ""
    result += "M" * (n // 1000)
    n %= 1000
    d = n // 100
    if d == 9:
        result += "CM"
    elif d >= 5:
        result += "D" + "C" * (d - 5)
    elif d == 4:
        result += "CD"
    else:
        result += "C" * d
    n %= 100
    d = n // 10
    if d == 9:
        result += "XC"
    elif d >= 5:
        result += "L" + "X" * (d - 5)
    elif d == 4:
        result += "XL"
    else:
        result += "X" * d
    n %= 10
    d = n
    if d == 9:
        result += "IX"
    elif d >= 5:
        result += "V" + "I" * (d - 5)
    elif d == 4:
        result += "IV"
    else:
        result += "I" * d

    return result
