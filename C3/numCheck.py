num = int(input())
if num != 0:
    print(
        f"This is a {"negative" if num <= 0 else "positive"} {"odd" if num % 2 else "even"} number."
    )
else:
    print("This is zero, which is an even number.")
