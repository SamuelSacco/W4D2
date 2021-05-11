# require_relative "./piece.rb"
class Board
    attr_reader :rows
    def initialize
        @rows = Array.new(8) { Array.new(8)} #{ NullPiece.new}
        # @null_piece: NullPiece
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
        (0...rows.length).each do |i|
            if i == 0 || i == 1 || i == 6 || i == 7
                rows[i].each do |j|
                    rows[i][j] = Piece.new
                end
            end

        end

    end

    def move_piece(start_pos, end_pos)
        if start_pos.all?{|ele| ele.between?(0,7)} == true
        else
            raise "Piece not in original position"
        end



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
            puts ele.join(" ")
        end
    end


end

# br = Board.new
# p br
b = Board.new
# p b
p b.render