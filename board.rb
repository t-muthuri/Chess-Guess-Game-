
# nouns = classes
# verbs = methods

# actors = classes
# messages = methods

class Board

    attr_reader :grid

    # method
    def grid
        @grid
    end

    def initialize
        # @ is for instance variable
        # 4x4 board to start
        @grid = [
            ["x", "x", nil, "x"],
            ["x", "x", nil, "x"],
            ["x", "x", nil, "x"],
            ["x", "x", nil, "x"]
        ]
    end

    # def place (piece, row, column) 
    #     # row = x
    #     #  column = y
    #     @grid[row][column] = piece
    # end

    #because the piece will always implement the x,y axis thearg can be passed as a single argument
    def []=(location, piece)
        row, column = location
        grid[row] [column] = piece
    end

    def [](location)
        row, column = location
        grid[row] [column]
    end

    def stay_on_board? (location)
        row, column = location

        row < grid.length &&
        column < grid.first.length &&
        row >= 0 &&
        column >= 0
    end

    # Things to do on the board
    # method for retrieving/getting a piece
    # place a random piece on the board
    # show the location of the piece and its id

end

b = Board.new

puts b.stay_on_board? ([-1, 0])
puts b.stay_on_board? ([1, 0])
puts b.stay_on_board? ([5, 0])
puts b.stay_on_board? ([0, 0])