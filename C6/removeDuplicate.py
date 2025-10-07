list_input = input("Enter a list, separated by commas:\n")
list = []
for i in list_input.split(","):
    i = int(i.strip())
    if i not in list:
        list.append(i)
print("Modified list:")
print(*list, sep=", ")
