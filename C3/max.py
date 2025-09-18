x, y, z = int(input()), int(input()), int(input())
if x != y != z:
    if x > y and x > z:
        print("Number 1 is the greatest")
    elif y > x and y > z:
        print("Number 2 is the greatest")
    else:
        print("Number 3 is the greatest")
else:
    print("All three numbers are equal")
