

class Player < Person

  DEFAULT_HEALTH = 20
  DEFAULT_STRENGTH = 5
  attr_reader :health, :strength, :alive

  def initialize(first_name, last_name)

    super(first_name, last_name)
    @health = DEFAULT_HEALTH
    @strength = DEFAULT_STRENGTH
  end

  def alive?
    # Shortest
    health > 0

    # Shorter
    #  health => 0 ? true : false
  end

  def take_damage(attack_strength)
    health -= attack_strength
end
