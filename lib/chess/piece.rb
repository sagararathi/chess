class Piece
  attr_accessor :position
  SIZE = 8

  def initialize(position)
    @position = position
  end

  def potential_moves
    letters = %w(a b c d e f g h)

    available_moves.map do |move|
      "#{letters[move[1]]}#{SIZE - move[0]}"
    end.join(', ')
  end
end