


class Wizard < Player

  DEFAULT_HEALTH = 20
  DEFAULT_STRENGTH = 75

  def initialize(first_name, last_name)
    super
    @strength = DEFAULT_STRENGTH
    @health = DEFAULT_HEALTH
  end
end
