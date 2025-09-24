print("Enter how many Fibonacci numbers to print:")
n = int(input())
if n <= 0:
    print("You entered an invalid number.")
else:
    a, b = 0, 1
    for _ in range(n):
        print(a)
        a, b = b, a + b