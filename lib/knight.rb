


class Knight < Player

  HEALTH = 50
  STRENGTH = 15

  def initialize(first_name, last_name)
    super
    @strength = STRENGTH
    @health  = HEALTH
  end
end
