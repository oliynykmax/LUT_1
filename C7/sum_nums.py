def sum_num_file(path: str):
    sum = 0.0
    for i in open(path, "r").readlines():
        sum += float(i.strip())
    return round(sum, 3)
