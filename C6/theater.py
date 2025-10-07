class Theater:
    def __init__(self, row: int, col: int):
        self.seats = []
        for i in range(row):
            sub_list = []
            for j in range(col):
                sub_list.append("O")
            self.seats.append(sub_list)

    def book_seat(self, row: int, col: int):
        if self.seats[row][col] == "X":
            return False
        self.seats[row][col] = "X"
        return True

    def cancel_booking(self, row: int, col: int):
        if self.seats[row][col] == "O":
            return False
        self.seats[row][col] = "O"
        return True

    def available_seats(self):
        count = len(self.seats) * len(self.seats[0])
        for row in self.seats:
            for seat in row:
                if seat == "X":
                    count -= 1
        return count
