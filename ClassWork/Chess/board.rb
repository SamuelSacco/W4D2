require_relative "./null_piece.rb"
require_relative "./piece.rb"
class Board
    attr_reader :rows
    def initialize
        @rows = Array.new(8) { Array.new(8) {Piece.new} }
    end

    def [](pos)
        row, col = pos
        rows[row][col]
    end
    
    def []=(pos, value)
        row, col = pos
        rows[row][col] = value
    end

    def place_pieces
        (2...@rows.length - 2).each do |i|
            (0...@rows.length).each do |j|
                @rows[i][j] = NullPiece.new
            end
        end
    end

    def move_piece(start_pos, end_pos)
        raise "THERE IS NO PIECE THERE IDIOT" if !self[start_pos].is_a?(Piece) #cehcks to see if start position is a piece
        raise "THAT SPOT IS OFF THE BOARD IDIOT" if end_pos.all?{|ele| ele.between?(0,7)} == false #checks to see if end popsition is out of bounds
        self[start_pos] = NullPiece.new
        self[end_pos] = Piece.new
    end

    def valid_pos?(pos)

    end

    def add_piece(piece, pos)

    end

    def checkmate?(color)

    end

    def in_check?(color)

    end

    def find_king(color)

    end

    def pieces

    end

    def dup

    end

    def move_piece!(color, start_pos, end_pos)

    end

    def render
        @rows.each do |ele|
            puts ele.map(&:symbol).join(" ")
        end
    end


end
b = Board.new
b.place_pieces
# b.render
b.move_piece([0,0],[20,5])
b.render
