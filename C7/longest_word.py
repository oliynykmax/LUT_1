def longest_word(path: str):
    list_of_words = open(path, "r").read().split()
    longest = ""
    for i in list_of_words:
        if len(longest) < len(i):
            longest = i
    return longest
