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
  end
end