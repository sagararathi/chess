module SlidingMoves
  VERTICAL_AND_HORIZONTAL = [[1, 0], [-1, 0], [0, -1], [0, 1]].freeze
  DIAGONAL                = [[-1, -1], [1, 1], [-1, 1], [1, -1]].freeze
  def available_moves
    position       ||= @position
    expected_moves ||= @expected_moves
    moves            = []
    
    raise BadInputError, 'Please provide correct positions' if position.empty?

    expected_moves.each do |expected_move|
      move = position
      loop do
        move = [expected_move[0] + move[0], expected_move[1] + move[1]]
        break if !in_range?(move)
        moves << move
      end
    end
    moves
  end

  def in_range?(moves)
    moves.all? {|move| move.between?(0, 7)}
  end
end