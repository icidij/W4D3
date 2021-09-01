require_relative "../piece.rb"
require_relative "../stepable.rb"
class King < Piece

include Stepable
attr_reader :symbol
    def initialize(color, board, pos)

        super
        @symbol = "King"
    end


    def move_dirs

        self.moves

    end



end