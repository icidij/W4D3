require_relative "piece"

class Board
    attr_reader :board
  def initialize
    @board = Array.new(8) { Array.new(8) }
    add_all_pieces
  end

  def add_all_pieces
    @board.each_with_index do |row, i|
      row.each_with_index do |space, j|
        if i < 2
          @board[i][j] = Piece.new("black", @board, [i, j])
        elsif i > 5
          @board[i][j] = Piece.new("white", @board, [i, j])
        else
          @board[i][j] = nil
        end
      end
    end
  end

  def move_piece(start_pos, end_pos) 

    raise "no piece at start position" if @board[start_pos[0]][start_pos[1]] == nil
    raise "cannot move there" if !((0..7).include?(end_pos[0])) || !((0..7).include?(end_pos[1]))
    @board[end_pos[0]][end_pos[1]] = @board[start_pos[0]][start_pos[1]]
    # @board[start_pos[0]][start_pos[1]].pos = end_pos
    @board[start_pos[0]][start_pos[1]] = nil
  end

  def [](pos)
    @board[pos[0]][pos[1]]
  end
end


