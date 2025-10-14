def reverse(path: str):
    f = open(path, "r").read().split("\n")
    save = []
    for i in f:
        if i == f[-1]:
            save.append(i[::-1])
        else:
            save.append(i[::-1] + "\n")
    open(path, "w").writelines((save))
