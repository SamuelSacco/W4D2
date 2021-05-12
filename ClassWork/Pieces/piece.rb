class Piece
    attr_reader :color, :board, :pos
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