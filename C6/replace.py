list_input = input("Enter a list, separated by commas:\n").split(",")
int_list = []
for item in list_input:
    int_list.append(int(item))
int_list[3] = 358
print("Modified list:")
print(*int_list, sep=", ")
