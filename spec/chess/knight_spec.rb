require 'chess/knight'

RSpec.describe Knight do
  let(:knight) { described_class.new([6,3])}
  describe '#initialize' do
    it 'should have expected moves and positions' do
      expect(knight.expected_moves).to eq [[-1, 2], [-2, -1], [-2, 1], [2, 1], [1, -2], [2, -1], [1, 2], [-1, -2]]
      expect(knight.position).to eq [6,3]
    end
  end

  describe '#potential_moves' do
    it 'should retun potential moves on board' do
      expect(knight.potential_moves).to eq "f3, c4, e4, b1, f1, b3"
    end
  end
end