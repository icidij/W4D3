require_relative "../piece.rb"
class Pawn < Piece
  attr_reader :color
  def initialize(color, board, pos)
    super
    @symbol = "Pawn"
  end

  def symbol
    @symbol
  end

  def move_dirs
    forward_steps + side_attacks
  end

  private

  def at_start_row?
    return true if ((@color == "white") && (@pos[0] == 6)) || ((@color == "black") && (@pos[0] == 1))
    false
  end

  def forward_dir
    return -1 if @color == "white"
    return 1 if @color == "black"
  end

  def forward_steps
    if at_start_row?
      move = 2 * forward_dir
    else
      move = forward_dir
    end
    @board[move+@pos[0],@pos[1]] == NullPiece.instance ? [move+@pos[0],@pos[1]] : []
  end    

  def side_attacks
    left_attack = [@pos[0] + forward_dir, (@pos[1] - 1)]
    right_attack = [@pos[0] + forward_dir, (@pos[1] + 1)]
    options = []
    if @board[right_attack].color == @opposite_color
      options << right_attack
    elsif @board[left_attack].color == @opposite_color
      options << left_attack
    end
    options   #[[],[]]
  end

end
