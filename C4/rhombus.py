n = 0
while not n % 2:
    n = int(input())
for i in range(1, n + 1):
    if i <= (n + 1) // 2:
        stars = i
    else:
        stars = n - i + 1
    spaces = (n + 1) // 2 - stars
    print(" " * spaces + "* " * stars)
