require 'chess/sliding_moves'

RSpec.describe 'SlidingMoves' do
  let(:dummy_class) { Object.new }

  before do
    dummy_class.extend(SlidingMoves)
    dummy_class.instance_variable_set(:@position, [2,6])
    dummy_class.instance_variable_set(:@expected_moves, SlidingMoves::VERTICAL_AND_HORIZONTAL)
  end

  describe '#available_moves' do
    context 'when piece rook only on board' do
      it 'returns following available moves on board' do
        expect(dummy_class.available_moves).to eq [[3, 6], [4, 6], [5, 6], [6, 6], [7, 6], [1, 6], [0, 6], [2, 5], [2, 4], [2, 3], [2, 2], [2, 1], [2, 0], [2, 7]]
      end
    end

    context 'when piece queen only on board' do
      it 'returns following available moves on board' do
        dummy_class.instance_variable_set(:@expected_moves, SlidingMoves::VERTICAL_AND_HORIZONTAL + SlidingMoves::DIAGONAL)
        expect(dummy_class.available_moves).to eq [[3, 6], [4, 6], [5, 6], [6, 6], [7, 6], [1, 6], [0, 6], [2, 5], [2, 4], [2, 3], [2, 2], [2, 1], [2, 0], [2, 7], [1, 5], [0, 4], [3, 7], [1, 7], [3, 5], [4, 4], [5, 3], [6, 2], [7, 1]]
      end
    end
  end

  describe '#in_range' do
    context 'given valid position' do
      it 'returns true for valid position on 8 X 8 board' do
        expect(dummy_class.in_range?([1,2])).to eq true
      end
    end

    context 'given invalid position' do
      it 'returns false for invalid position on 8 X 8 board' do
        expect(dummy_class.in_range?([1,12])).to eq false
      end
    end
  end
  
end