x1, x2, y1, y2 = float(input()), float(input()), float(input()), float(input())
print(
    f'The slope is a "{"vertical line" if x1 == x2 else "positive slope" if (y2 - y1) / (x2 - x1) > 0 else "negative slope" if (y2 - y1) / (x2 - x1) < 0 else "horizontal line" if (y2 - y1) / (x2 - x1) == 0 else None}"'
)
