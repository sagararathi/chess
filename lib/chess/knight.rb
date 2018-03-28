require_relative 'piece'
require_relative 'stepping_moves'

class Knight < Piece
  attr_reader :expected_moves
  include SteppingMoves

  def initialize(position)
    @expected_moves = SteppingMoves::KNIGHT
    super(position)
  end
end