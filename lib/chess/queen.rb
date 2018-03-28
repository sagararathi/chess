require_relative 'piece'
require_relative 'sliding_moves'
class Queen < Piece
  attr_reader :expected_moves
  include SlidingMoves

  def initialize(positions)
    @expected_moves = SlidingMoves::VERTICAL_AND_HORIZONTAL + SlidingMoves::DIAGONAL

    super(positions)
  end
end