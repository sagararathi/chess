require_relative 'chess/knight'
require_relative 'chess/rook'
require_relative 'chess/queen'
require_relative 'chess/stepping_moves'
require_relative 'chess/error'

class Chess
  attr_accessor :piece, :positions, :position_string

  def initialize(piece, position_string)
    @piece           = piece
    @position_string = position_string
  end

  def get_positions
    @positions = get_coordinates

    klass.new(@positions)
         .potential_moves
  rescue BadInputError => e
    puts e.message
  end

  private
  def get_coordinates
    unless !@piece.nil? && !@position_string.nil?
      raise BadInputError, 'Provide valid inputs for piece and positions on board'
    end

    return [] unless position_string.length == 2
    
    letters   = %w(a b c d e f g h)
    [
      8 - position_string.split('').last.to_i, 
      letters.index(position_string.downcase.split('').first)
    ]
  end

  def klass
    Object.const_get(piece.capitalize)
  rescue
    raise BadInputError, 'Not valid Piece or not implemented'
  end
end



args = Hash[ARGV.flat_map{|s| s.scan(/--?([^=\s]+)(?:=(\S+))?/) } ]

if !args.empty?
  puts Chess.new(args['piece'], args['position']).get_positions
else
  puts 'Provide valid inputs for piece and position on board.'
end
