require_relative 'piece'
require_relative 'sliding_moves'
class Rook < Piece
  attr_reader :expected_moves
  include SlidingMoves

  def initialize(position)
    @expected_moves = SlidingMoves::VERTICAL_AND_HORIZONTAL

    super(position)
  end

end