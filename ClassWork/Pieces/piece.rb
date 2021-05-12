class Piece
    attr_reader :symbol
    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
        @symbol = :P
    end

    def move(start_pos, end_pos)
        #shoud at least be on the board
    end
end