require_relative "./board.rb"
class Piece
    def initialize 
        #(color, board, position)
        # @color = color
        # @board = board
        # @position = position
    end

    def to_s

    end

    def empty?

    end

    def valid_moves

    end

    def pos=(val)

    end

    private
    def move_into_check?(end_pos)

    end

end

# p board = Board.new
# p rook = Piece.new("black", board , [0,0])
# p knight = Piece.new("black", board , [0,4])
# p queen = Piece.new("black", board , [0,3])
# p pawn = Piece.new("black", board , [1,0])
# p king = Piece.new("black", board , [0,1])
# p 

# board.print