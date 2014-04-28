


class Wizard < Player

  HEALTH = 20
  STRENGTH = 75

  def initialize(first_name, last_name)
    super
    @strength = STRENGTH
    @health = HEALTH
  end
end
