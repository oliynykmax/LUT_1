def log(severity: str, text: str):
    open("info.log", "a").write(f"{severity}: {text}\n")
