require_relative "../piece.rb"
require_relative "../slideable.rb"
class Rook < Piece

include Slideable
attr_reader :symbol
    def initialize(color, board, pos)

        super
        @symbol = "Rook"
    end


    def move_dirs

        self.moves

    end



end