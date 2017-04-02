require 'player'

describe Player do
  subject(:player_1) {described_class.new('Emily')}

  describe '#name'do
    it 'returns player name' do
      expect(player_1.name).to eq 'Emily'
    end
  end

end
