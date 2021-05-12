module Slideable
<<<<<<< HEAD

  # HORIZONTAL_DIRS stores an array of horizontal directions
    # when a piece moves in a given direction, its row and/or its column should increment by some value
    # ex: A piece starts at position [1, 2] and it moves horizontally to the right
      # its position changes to [1,3]
      # the row increases by 0 and the column increases by 1
  HORIZONTAL_DIRS = [
    [:dx, :dy], # left
    [:dx, :dy], # right [0, 1]
    [:dx, :dy], # up (vertical)
    [:dx, :dy]  # down (vertical)
  ].freeze # prevents any mutations to outer array

  # DIAGONAL_DIRS stores an array of diagonal directions
  DIAGONAL_DIRS = [
    [:dx, :dy], # up + left [-1, -1]
    [:dx, :dy], # up + right
    [:dx, :dy], # down + left
    [:dx, :dy]  # down + right
  ].freeze


  def horizontal_dirs
    # getter for HORIZONTAL_DIRS
  end

  def diagonal_dirs
    # getter for DIAGONAL_DIRS
  end


  # should return an array of places a Piece can move to
  def moves
    # create array to collect moves

=======
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
>>>>>>> b5590f69e03fe1c35b999b7a4aac057321c2e5c6
    # iterate over each of the directions in which a slideable piece can move
      # use the Piece subclass' `#move_dirs` method to get this info
      # for each direction, collect all possible moves in that direction
        # and add them to your moves array 
        # (use the `grow_unblocked_moves_in_dir` helper method)

    # return the final array of moves (containing all possible moves in all directions)
<<<<<<< HEAD
=======
    new_pos
>>>>>>> b5590f69e03fe1c35b999b7a4aac057321c2e5c6
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
<<<<<<< HEAD

    # get the piece's current row and current column

    # starting pos = [0, 0]
    # dir = [0, 1]
    # [0, 0]
    # [0, 1]
    # [0, 2]
    # ... until we go off board or hit a piece

=======
    moves = []
    
    x, y = self.pos
    while x.between?(0,7) && y.between?(0,7)
        
        break if board[[x,y]].color == self.color
    

    # get the piece's current row and current column
    
  
>>>>>>> b5590f69e03fe1c35b999b7a4aac057321c2e5c6
    # in a loop:
      # continually increment the piece's current row and current column to generate a new position
      # stop looping if the new position is invalid (not on the board); the piece can't move in this direction
      # if the new position is empty, the piece can move here, so add the new position to the moves array
      # if the new position is occupied with a piece of the opposite color, the piece can move here (to capture the opposing piece), so add the new position to the moves array
        # but, the piece cannot continue to move past this piece, so stop looping
      # if the new position is occupied with a piece of the same color, stop looping
<<<<<<< HEAD
=======
      x += dx
      y += dy
>>>>>>> b5590f69e03fe1c35b999b7a4aac057321c2e5c6

    # return the final moves array
  end
end
<<<<<<< HEAD
=======



    
end
>>>>>>> b5590f69e03fe1c35b999b7a4aac057321c2e5c6
