require_relative 'piece'
require_relative 'slideable'

class Rook < Piece
  include Slideable

  def symbol
    '♜'.colorize(color)
  end

  protected
<<<<<<< HEAD

  def move_dirs
=======

  def move_dirs

    horizontal_vetical_dirs
>>>>>>> b5590f69e03fe1c35b999b7a4aac057321c2e5c6
    # return the directions in which a rook can move
    # a rook can move horizontally (across rows and columns)
  end
end