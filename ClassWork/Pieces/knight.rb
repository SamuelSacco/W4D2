class Knight < Piece
    # include Stepable
    def initialize(color, board, start_pos)
        super
        @symbol = :n
    end
    private
    def move_diffs
        [
            [2,  1],
            [2, -1],
            [1,  2],
            [1, -2],
            [-2, 1],
            [-2,-1],
            [-1, 2],
            [-1,-2]
        ]
    end
end