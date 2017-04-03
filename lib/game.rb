class Game

  WEAPONS = [:rock, :paper, :scissors]

  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  attr_reader :player_turn, :computer_turn, :result

  def initialize(player, computer)
    @player_turn = player
    @computer_turn = computer
    @result
  end

  def play(choice_1, choice_2)
    self.player_turn = choice_1
    self.computer_turn = choice_2
  end

  def result
    "It's a draw" if player_turn == computer_turn
    if RULES[player_turn] == computer_turn
      "You have won!"
    else
      "The computer wins!"
    end
  end

  private

  attr_writer :player_turn, :computer_turn, :result

end
