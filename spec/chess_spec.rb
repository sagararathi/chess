require 'chess'
RSpec.describe Chess do
  let(:knight) { described_class.new('Knight', 'd2') }

  describe '#get_positions' do
    context 'available moves for  Knight' do
      it 'returns possible moves for Knight from position d2' do
        expect(knight.get_positions).to eq "f3, c4, e4, b1, f1, b3"
      end
    end

    context 'available moves for Rook' do
      let(:rook) { described_class.new('rook', 'd2')}
      it 'returns possible moves for Rook from position d2' do
        expect(rook.get_positions).to eq 'd1, d3, d4, d5, d6, d7, d8, c2, b2, a2, e2, f2, g2, h2'
      end
    end

    context 'available moves for Queen' do
      let(:queen) { described_class.new('queen', 'd2')}

      it 'returns possible moves for Queen from positions d2' do
        expect(queen.get_positions).to eq 'd1, d3, d4, d5, d6, d7, d8, c2, b2, a2, e2, f2, g2, h2, c3, b4, a5, e1, e3, f4, g5, h6, c1'
      end
    end
  end

  describe '#get_coordinates' do
    it 'should return cordinate positions of piece on baord' do
      expect(knight.send(:get_coordinates)).to eq [6,3]
    end

    it 'should return empty array for invalid position entered' do
      knight.position_string = 'd12'
      expect(knight.send(:get_coordinates)).to eq []
    end
  end
  describe '#klass' do
    it 'should return class' do
      expect(knight.send(:klass)).to eq Knight
    end
  end
end

