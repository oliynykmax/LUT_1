class Cube:
    side: float

    def __init__(self, side_length: float):
        self.side = side_length

    def surface(self):
        return 6 * self.side**2

    def volume(self):
        return self.side**3
