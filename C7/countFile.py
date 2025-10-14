# Enter the name of the file:
# example_3.txt
# The file contains 11 lines.
print(
    f"The file contains {len(open(input('Enter the name of the file:\n')).readlines())} lines."
)
