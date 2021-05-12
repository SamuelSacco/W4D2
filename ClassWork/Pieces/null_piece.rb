require "singleton"
class NullPiece < Piece
    include Singleton
    def initialize
        # super 
        @symbol = :N
    end
end
