require_relative "../piece.rb"
require "singleton"
class NullPiece < Piece
include Singleton
    attr_reader :symbol, :pos
    def initialize
        @symbol = " "
    end

    def moves
        @pos    
    end

    def empty?
        true
    end
    

end