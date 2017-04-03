require 'game'

  describe Game do
    subject(:game) {described_class.new(player, computer)}
    let(:player) {double :player, name: "Emily"}
    let(:computer) {double :computer, name: "Computer"}

    describe 'player_turn' do
      it "returns the first player's name" do
        expect(player.name).to eq("Emily")
      end
    end

    describe 'computer_turn' do
      it "returns the second player's name" do
        expect(computer.name).to eq("Computer")
      end
    end

    describe '#play' do
      it 'shows what weapon the player has chosen' do
        game.play(:paper, :scissors)
        expect(game.player_turn).to eq :paper
      end
    end

    describe '#result' do
      it 'works out the winner' do
        game.play(:rock, :paper)
        expect(game.result). to eq 'You have won!'
      end

      it 'works out when there is a draw' do
        game.play(:scissors, :scissors)
        expect(game.result).to eq "It's a draw"
      end
    end

  end
