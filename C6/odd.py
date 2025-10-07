int_list = []
for item in input("Enter a list, separated by commas:\n").split(","):
    int_list.append(float(item.strip()))
print("Numbers at odd positions:")
print(*int_list[::2], sep=", ")
