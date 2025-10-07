def rotate(lst: list[any], step: int) -> list[any]:
    lst[:] = lst[-step % len(lst) :] + lst[: -step % len(lst)]
