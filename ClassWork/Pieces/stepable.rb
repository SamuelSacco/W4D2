module Stepable
<<<<<<< HEAD
  def moves
    # create array to collect moves

    # iterate through each of the piece's possible move_diffs
      # for each move_diff, increment the piece's position to generate a new position
      # add the new position to the moves array if it is:
        # on the board and empty
        # OR on the board and contains a piece of the opposite color

    # return the final array of moves
  end

  private

  def move_diffs
    # subclass implements this
    raise NotImplementedError
  end
end
=======
    def moves
      # create array to collect moves
  
      # iterate through each of the piece's possible move_diffs
        # for each move_diff, increment the piece's position to generate a new position
        # add the new position to the moves array if it is:
          # on the board and empty
          # OR on the board and contains a piece of the opposite color
  
      # return the final array of moves
    end
  
    private
  
    def move_diffs
      # subclass implements this
      raise NotImplementedError
    end
  end
  
  
  # Note: you can invoke methods from the piece from within the module methods, and vice versa. It is a two way street!
>>>>>>> b5590f69e03fe1c35b999b7a4aac057321c2e5c6
