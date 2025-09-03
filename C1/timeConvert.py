# Write a program that asks the user to enter a number of seconds. Convert this value into minutes and remaining seconds.
#
#     Save the number of minutes in a variable called "minute".
#     Save the remaining seconds in a variable called "remaining_second".
#
# Example output:
# Enter total seconds:
# 130
# Minutes: 2
# Remaining seconds: 10
#
# The file you submit must be called "timeConvert.py".
#


user_input = int(input("Enter total seconds: "))
minute = user_input // 60;
remaining_second = user_input - (minute * 60)
print("Minutes:", minute)
print("Remaining seconds:", remaining_second)
