x1, x2, y1, y2 = float(input()), float(input()), float(input()), float(input())
if x1 == x2:
    slope_type = "vertical line"
else:
    m = (y2 - y1) / (x2 - x1)
    if m > 0:
        slope_type = "positive slope"
    elif m < 0:
        slope_type = "negative slope"
    else:
        slope_type = "horizontal line"
print(f'The slope is a "{slope_type}".')
