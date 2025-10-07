def extract_usernames(emails):
    usernames = []
    for item in emails:
        clean = item.strip().split("@")[0].lower()
        if clean not in usernames:
            usernames.append(clean)
    usernames.sort()
    return usernames
