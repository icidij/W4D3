require_relative "piece"
require_relative "pieces/pieces.rb"

class Board
    attr_reader :board
  def initialize
    @board = Array.new(8) { Array.new(8,NullPiece.instance) }
    add_all_pieces
  end

  def add_all_pieces
    last_row = [Rook,Knight,Bishop,Queen,King,Bishop,Knight,Rook]
    @board.each_with_index do |row, i|
      if i == 0
        last_row.each_with_index {|space, j| @board[i][j] = space.new("black", @board, [i, j])}
      elsif i == 1
        row.each_with_index { |space, j| @board[i][j] = Pawn.new("black", @board, [i, j]) }
      elsif i == 6
        row.each_with_index { |space, j| @board[i][j] = Pawn.new("white", @board, [i, j]) }
      elsif i == 7
        last_row.each_with_index { |space, j| @board[i][j] = space.new("white", @board, [i, j]) }
      end
    end
  end

  def move_piece(start_pos, end_pos) 

    raise "no piece at start position" if @board[start_pos[0]][start_pos[1]] == nil
    raise "cannot move there" if !((0..7).include?(end_pos[0])) || !((0..7).include?(end_pos[1]))
    @board[end_pos[0]][end_pos[1]] = @board[start_pos[0]][start_pos[1]]
    # @board[start_pos[0]][start_pos[1]].pos = end_pos
    @board[start_pos[0]][start_pos[1]] = NullPiece.instance
  end

  def [](pos)
    @board[pos[0]][pos[1]]
  end
end


