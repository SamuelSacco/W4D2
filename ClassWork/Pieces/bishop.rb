require_relative 'piece'
require_relative 'slideable'

class Bishop < Piece
  include Slideable

  def symbol
    '♝'.colorize(color)
  end

  protected

  def move_dirs
<<<<<<< HEAD
=======
    diagonal_dirs
>>>>>>> b5590f69e03fe1c35b999b7a4aac057321c2e5c6
    # return the directions in which a bishop can move
    # a bishop can move diagonally
  end
end