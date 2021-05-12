require_relative "pieces"
class Board
    attr_reader :rows
    def initialize
        @rows = Array.new(8) { Array.new(8){NullPiece.instance} }
        place_pieces

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
        @rows.each_index do |i|
            case i
            when 0 
                (0...@rows[0].length).each {|i| self[[0,i]] = Piece.new(:b, self, [0,i])}
            when 1
                (0...@rows[0].length).each {|i| self[[1,i]] = Piece.new(:b, self, [0,i])}
            when 6
                (0...@rows[0].length).each {|i| self[[6,i]] = Piece.new(:b, self, [0,i])}
            when 7
                (0...@rows[0].length).each {|i| self[[7,i]] = Piece.new(:b, self, [0,i])}
            end
        end
    end

    def move_piece(start_pos, end_pos)
        raise "THERE IS NO PIECE THERE IDIOT" if !self[start_pos] == NullPiece.instance #cehcks to see if start position is a piece
        raise "THAT SPOT IS OFF THE BOARD IDIOT" if end_pos.all?{|ele| ele.between?(0,7)} == false #checks to see if end popsition is out of bounds
        self[start_pos] = NullPiece.instance
        self[end_pos] = Piece.new(:b, self, end_pos)
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
# b = Board.new
# b.place_pieces
# # b.render
# b.move_piece([0,0],[4,4])
# b.render


