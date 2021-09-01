require_relative "../piece.rb"
class NullPiece < Piece

    def initialize(color, board, pos)
        @color = nil
        super(board, pos)
    end


    

end