module SteppingMoves
  KNIGHT = [[-1, 2], [-2, -1], [-2, 1], 
            [2, 1], [1, -2], [2, -1], [1, 2], [-1, -2]
          ].freeze


  def available_moves
    expected_moves ||= @expected_moves
    position       ||= @position
    
    raise BadInputError, 'Please provide correct positions' if position.empty?

    moves = expected_moves.map do |expected_move|
      [expected_move[0] + position[0], expected_move[1] + position[1]]
    end

    moves.select do |move|
      in_range?(move)
    end
  end

  def in_range?(moves)
    moves.all? {|move| move.between?(0, 7)}
  end
end
