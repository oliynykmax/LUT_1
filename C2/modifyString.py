text = input("Enter a string:")
num = int(input("Enter an integer:"))
result = text[: num - 1] + "@" + text[num:]
print(f"The new string is: {result}")
