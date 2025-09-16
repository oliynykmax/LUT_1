x, y, z = int(input()), int(input()), int(input())
if x != y != z:
    print(
        f"Number { "1" if x == (m := max(x,y,z)) else "2" if y == m else "3" } is the greatest"
    )
else:
    print("All three numbers are equal")
