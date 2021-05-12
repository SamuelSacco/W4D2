module Slideable

  HORIZONTAL_VERTICAL_DIRS = [
    [0,1],
    [0,-1],
    [1,0],
    [-1, 0]
  ].freeze

  DIAGONAL_DIRS = [
      [1,1],
      [-1,-1],
      [1,-1],
      [-1, 1]
  ].freeze

  def horizontal_vetical_dirs
      HORIZONTAL_VERTICAL_DIRS
  end

  def diagonal_dirs
      DIAGONAL_DIRS
  end

  def moves
    new_pos = []
    move_dirs.each do |delta|
        dx, dy = delta
        new_pos += grow_unblocked_moves_in_dir(dx, dy)
    end

    new_pos
  end

  private

  def move_dirs
    # subclass implements this
    # raise NotImplementedError # this only executes if 
  end

  def grow_unblocked_moves_in_dir(dx, dy)
    moves = []
    
    x, y = self.pos
    while x.between?(0,7) && y.between?(0,7)
        break if board[[x,y]].color == self.color
        moves << [x,y]
        x += dx
        y += dy
    end

    moves
  end
end

    # get the piece's current row and current column
    
  
    # in a loop:
      # continually increment the piece's current row and current column to generate a new position
      # stop looping if the new position is invalid (not on the board); the piece can't move in this direction
      # if the new position is empty, the piece can move here, so add the new position to the moves array
      # if the new position is occupied with a piece of the opposite color, the piece can move here (to capture the opposing piece), so add the new position to the moves array
        # but, the piece cannot continue to move past this piece, so stop looping
      # if the new position is occupied with a piece of the same color, stop looping