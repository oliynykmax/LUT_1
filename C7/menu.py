def display_menu():
    entry = int(
        input("""
--- Menu ---
1)Input numbers
2)Ordered numbers
3)Minimum of the numbers
4)Maximum of the numbers
5)Average of the numbers
0)End
------------
Enter your choice (0-5):
""")
    )
    return entry


l = []
while True:
    entry = display_menu()
    match entry:
        case 0:
            print("Exiting the program. Goodbye!")
            break
        case 1:
            for i in input("Enter numbers separated by blanks:\n").split(" "):
                l.append(int(i))
            print(f"Successfully stored {len(l)} numbers.")
        case 2:
            print("Numbers in ascending order: ", *sorted(l))
        case 3:
            print("The minimum number is:", min(l))
        case 4:
            print("The maximum number is:", max(l))
        case 5:
            print(f"The average of the numbers is: {sum(l) / len(l):.2f}")
