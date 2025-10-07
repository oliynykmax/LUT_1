def flatten(lst):
    flat_list = []
    for item in lst:
        for i in item:
            flat_list.append(i)
    return flat_list
