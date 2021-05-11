class NullPiece

    attr_reader :symbol
    
    def initialize
        @symbol = :N
    end
end

null = NullPiece.new