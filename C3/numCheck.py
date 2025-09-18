num = int(input())
if num != 0:
    if num > 0:
        sign = "positive"
    else:
        sign = "negative"
    if num % 2 == 0:
        parity = "even"
    else:
        parity = "odd"
    print(f"This is a {sign} {parity} number.")
else:
    print("This is zero, which is an even number.")
