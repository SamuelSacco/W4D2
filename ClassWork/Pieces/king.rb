require_relative 'piece'
require_relative 'stepable'

<<<<<<< HEAD
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
  end
=======
class King 
    
    include Stepable

    def symbol
        '♚'.colorize(color)
    end
    
    protected
    
    def move_diffs
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
    
        # return an array of diffs representing where a King can step to
    end
>>>>>>> b5590f69e03fe1c35b999b7a4aac057321c2e5c6
end