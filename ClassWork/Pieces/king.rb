require_relative 'piece'
require_relative 'stepable'

class King < Piece
    include Stepable
    MOVES = [
        [1,1],
        [1,0],
        [0,1],
        [-1,-1],
        [-1,1],
        [1,-1],
        [0,-1],
        [-1,0]
    ]
    def symbol
        '♚'.colorize(color)
    end
    
    protected
    
    def move_diffs
        MOVES
        # return an array of diffs representing where a King can step to
    end
end

[[1, 5], [1, 4], [-1, 3], [-1, 5], [1, 3], [-1, 4]]