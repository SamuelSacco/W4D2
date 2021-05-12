
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
        
  def symbol
    '♞'.colorize(color)
  end

  protected

  def move_diffs
   MOVES
  end
end
