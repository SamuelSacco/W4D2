module Stepable
  def moves
    moves = []

    move_diffs.each do |delta|
        x, y = self.pos
        dx, dy = delta
        new_pos = [x + dx, y + dy]
        if !new_pos[0].between?(0,7) || !new_pos[1].between?(0,7)
          next
        elsif board[new_pos].color == self.color
          next
        else   
          moves << new_pos
        end
    end
    
    moves
  end

  private

  def move_diffs
  # subclass implements this
  raise NotImplementedError
  end
end
  
  
  # Note: you can invoke methods from the piece from within the module methods, and vice versa. It is a two way street!
