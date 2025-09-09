string_1 = input("Enter the first string: ")
string_2 = input("Enter the second string: ")
middle = int(len(string_1) / 2)
print(string_1[:middle] + string_2 + string_1[middle:])
