# T7
# number = -534
smallest_digit, largest_digit = 9, 0
if number < 0:
    number *= -1
for i in str(number):
    num = int(i)
    if num < smallest_digit:
        smallest_digit = num
    if num > largest_digit:
        largest_digit = num
