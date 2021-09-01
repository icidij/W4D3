class Piece
  attr_reader :color, :pos

  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos
    @opposite_color = opposite_color
    @symbol = nil
  end

  def to_s
    @symbol
  end

  def moves(pos)
  end

  def opposite_color
    return "black" if @color == "white"
    return "white" if @color == "black"
    nil
  end

  def inspect
    {
      symbol: symbol
  }.inspect
  end
end