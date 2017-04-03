class Player

  attr_reader :name

  def initialize
    @name = name
  end

  def enter_name(player)
    self.name = player
  end

  private

  attr_writer :name

end
