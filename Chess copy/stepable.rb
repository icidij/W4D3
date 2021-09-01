module Stepable
  KING_DIRS = [[0, 1], [1, 0], [1, 1], [-1, -1], [-1, 1], [1, -1], [0, -1], [-1, 0]]
  KNIGHT_DIRS = [[2, 1], [-2, 1], [1, 2], [-1, 2], [-2, -1], [2, -1], [1, -2], [-1, -2]]

  def king_dirs
    KING_DIRS
  end

  def knight_dirs
    KNIGHT_DIRS
  end

  def moves
    knight_moves = []
    king_moves = []

    king_dirs.each do |dir|
      position = self.pos
      new_spot = [position[0] + dir[0], position[1] + dir[1]]
      if (self.board[new_spot] == Nullpiece.instance) && (self.board[position].valid_position?)
        king_moves << new_spot
      elsif (self.board[position].color != self.color) && (self.board[position].valid_position?)
        king_moves << new_spot
      end
    end
    knight_dirs.each do |dir|
      position = self.pos
      new_spot = [position[0] + dir[0], position[1] + dir[1]]
      if (self.board[new_spot] == Nullpiece.instance) && (self.board[position].valid_position?)
        knight_moves << new_spot
      elsif (self.board[position].color != self.color) && (self.board[position].valid_position?)
        knight_moves << new_spot
      end
    end
    if self.symbol == "Knight"
      return knight_moves
    elsif self.symbol == "King"
      return king_moves
    end
  end

  private

  def move_dirs
    raise NotImplementedError
  end
end
