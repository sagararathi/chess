require 'chess/rook'

RSpec.describe Rook do
  let(:rook) { described_class.new([6,3])}
  describe '#initialize' do
    it 'should have expected moves and positions' do
      expect(rook.expected_moves).to eq [[1, 0], [-1, 0], [0, -1], [0, 1]]
      expect(rook.position).to eq [6,3]
    end
  end

  describe '#potential_moves' do
    it 'should retun potential moves on board' do
      expect(rook.potential_moves).to eq "d1, d3, d4, d5, d6, d7, d8, c2, b2, a2, e2, f2, g2, h2"
    end
  end
end