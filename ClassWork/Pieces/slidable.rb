module Slideable
    HORIZONTAL_VERTICAL_DIRS = [
        [0,1]
        [0,-1]
        [1,0]
        [-1, 0]
].freeze
    DIAGONAL_DIRS = [
        [1,1]
        [-1,-1]
        [1,-1]
        [-1, 1]
].freeze

    def horizontal_vetical_dirs
        HORIZONTAL_VERTICAL_DIRS
    end


    def diagonal_dirs
        DIAGONAL_DIRS
    end


  
  # should return an array of places a Piece can move to
  def moves
    # create array to collect moves
    new_pos = []
    move_dirs.each do |delta|
        dx, dy = delta
        new_pos += grow_unblocked_moves_in_dir(dx, dy)
    end
    # iterate over each of the directions in which a slideable piece can move
      # use the Piece subclass' `#move_dirs` method to get this info
      # for each direction, collect all possible moves in that direction
        # and add them to your moves array 
        # (use the `grow_unblocked_moves_in_dir` helper method)

    # return the final array of moves (containing all possible moves in all directions)
    new_pos
  end


  private

  def move_dirs
    # subclass implements this
    raise NotImplementedError # this only executes if 
  end


  # this helper method is only responsible for collecting all moves in a given direction
  # the given direction is represented by two args, the combination of a dx and dy
  def grow_unblocked_moves_in_dir(dx, dy)
    # create an array to collect moves
    moves = []
    
    x, y = self.pos
    while x.between?(0,7) && y.between?(0,7)
        
        break if board[[x,y]].color == self.color
    

    # get the piece's current row and current column
    
  
    # in a loop:
      # continually increment the piece's current row and current column to generate a new position
      # stop looping if the new position is invalid (not on the board); the piece can't move in this direction
      # if the new position is empty, the piece can move here, so add the new position to the moves array
      # if the new position is occupied with a piece of the opposite color, the piece can move here (to capture the opposing piece), so add the new position to the moves array
        # but, the piece cannot continue to move past this piece, so stop looping
      # if the new position is occupied with a piece of the same color, stop looping
      x += dx
      y += dy

    # return the final moves array
  end
end



    
end