module Slideable

    HORIZONTAL_DIRS = [[0,1],[0,-1],[1,0],[-1,0]]
    DIAGONAL_DIRS = [[1,1],[1,-1],[-1,1],[-1,-1]]


    def horizontal_dirs 
        HORIZONTAL_DIRS
    end

    def diagonal_dirs 
        DIAGONAL_DIRS
    end

    def moves

    end

    private
    def move_dirs
        raise NotImplementedError
    end

    def grow_unblocked_moves_in_dir(dr, dc)
        available_moves = []
        position = self.pos
        no_available moves = false
        until no_available_moves
             
            position = [position[0] + dr, position[1] + dc]
            if (self.board[position] == Nullpiece.instance) && (self.board[position].valid_position?)
                    available_moves << position
                    
            elsif (self.board[position].color != self.color) && (self.board[position].valid_position?)
                available_moves << position
                no_available_moves = true
            else
                no_available_moves = true
            end
        end
        available_moves
    end

end