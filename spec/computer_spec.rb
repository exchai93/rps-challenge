require 'computer'

  describe Computer do
    let(:computer) {described_class.new}

    describe '#weapon' do
      it 'generates a random weapon' do
        expect(computer.weapon).to eq(:paper)
      end
    end

  end
