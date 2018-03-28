require 'chess/stepping_moves'

RSpec.describe 'SteppingMoves' do
  let(:dummy_class) { Object.new }

  before do
    dummy_class.extend(SteppingMoves)
    dummy_class.instance_variable_set(:@position, [2,6])
    dummy_class.instance_variable_set(:@expected_moves, SteppingMoves::KNIGHT)
  end

  describe '#available_moves' do
    it 'returns available moves on board' do
      expect(dummy_class.available_moves).to eq [[0, 5], [0, 7], [4, 7], [3, 4], [4, 5], [1, 4]]
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