def count(path: str):
    f = open(path, "r").read()
    d = []
    d.append(len(f))
    d.append(len(f.split()))
    return d
