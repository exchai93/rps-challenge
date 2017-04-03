require 'player'

describe Player do
  subject(:player) {described_class.new}

  describe '#enter_name'do
    it 'returns player name' do
      player.enter_name("Emily")
      expect(player.name).to eq 'Emily'
    end
  end

end
