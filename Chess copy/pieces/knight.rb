require_relative "../piece.rb"
require_relative "../stepable.rb"
class Knight < Piece

include Stepable
attr_reader :symbol
    def initialize(color, board, pos)

        super
        @symbol = "Knight"
    end


    def move_dirs

        self.moves

    end



end