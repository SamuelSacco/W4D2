class Piece
<<<<<<< HEAD
    attr_reader :color, :board, :pos
=======
    attr_reader :symbol, :pos, :color, :board
>>>>>>> b5590f69e03fe1c35b999b7a4aac057321c2e5c6
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