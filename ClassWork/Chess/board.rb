require_relative "pieces"
class Board
    attr_reader :rows
    def initialize
        @rows = Array.new(8) { Array.new(8) {NullPiece.instance} }
        place_pieces
    end

    def [](pos)
        row, col = pos
        @rows[row][col]
    end
    
    def []=(pos, value)
        row, col = pos
        @rows[row][col] = value
    end

    def place_pieces
        @rows.each_index do |i|
            case i
            when 0 
                @rows[0] = setup_row(:b,0)
            # when 1
            #     (0...@rows[0].length).each {|i| self[[1,i]] = Piece.new(:b, self, [0,i])}
            # when 6
            #     (0...@rows[0].length).each {|i| self[[6,i]] = Piece.new(:b, self, [0,i])}
            when 7
                @rows[7] = setup_row(:w, 7)
            end
        end
    end

    def setup_row(color, row)
        [
            Rook.new(color, self, [row, 0]),
            Knight.new(color, self, [row, 1]),
            Bishop.new(color, self, [row, 2]),
            Queen.new(color, self, [row, 3]),
            King.new(color, self, [row, 4]),
            Bishop.new(color, self, [row, 5]),
            Knight.new(color, self, [row, 6]),
            Rook.new(color, self, [row, 7])
        ]
    end

    def move_piece(color, start_pos, end_pos)
        raise "THERE IS NO PIECE THERE IDIOT" if self[start_pos] == NullPiece.instance #chcks to see if start position is a nullpiece
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

b = Board.new
b.render
queen = b[[7,4]]
p queen.moves