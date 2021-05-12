<<<<<<< HEAD

class Knight < Piece
  include Stepable

    MOVES = [
            [2,  1],
            [2, -1],
            [1,  2],
            [1, -2],
            [-2, 1],
            [-2,-1],
            [-1, 2],
            [-1,-2]
        ]
        
=======
require_relative 'piece'
require_relative 'stepable'
   
class Knight < Piece
   
  include Stepable

>>>>>>> b5590f69e03fe1c35b999b7a4aac057321c2e5c6
  def symbol
    '♞'.colorize(color)
  end

  protected

  def move_diffs
<<<<<<< HEAD
   MOVES
=======
    MOVES = [
        [1,2],
        [-1,2],
        [2,1],
        [2,-1],
        [-1,2],
        [-1,-2],
        [-2,1],
        [-2,-1]
    ]
    # return an array of diffs representing where a Knight can step to
>>>>>>> b5590f69e03fe1c35b999b7a4aac057321c2e5c6
  end
end
