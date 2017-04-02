class Game

  def self.create(player_1)
    @game = Game.new(player_1)
  end

  def self.instance
    @game
  end

  attr_reader :players, :current_turn

  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

  def initialize(player_1)
    @players = [player_1]
    @current_turn = player_1
  end

  private

  attr_writer :players, :current_turn

end
