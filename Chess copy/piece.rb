class Piece
  attr_reader :color

  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos
    @opposite_color = opposite_color
  end

  def to_s
  end

  def moves(pos)
  end

  def opposite_color
    return "black" if @color == "white"
    return "white" if @color == "black"
    nil
  end
end