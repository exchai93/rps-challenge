require 'game'

  describe Game do
    subject(:game) {described_class.new(player_1)}
    let(:player_1) {double :player}


    describe '#current_turn' do
      it 'returns the player whose turn it is' do
        expect(game.current_turn).to eq player_1
      end
    end

  end
