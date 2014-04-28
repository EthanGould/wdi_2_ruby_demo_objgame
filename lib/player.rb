require_relative 'person'
require_relative 'talker'

class Player < Person

  # MIXIN all methods in Talker Module to
  # this class and all sub classes
  include Talker

  DEFAULT_HEALTH = 20
  DEFAULT_STRENGTH = 5
  attr_reader :health, :strength

  def initialize(first_name, last_name)

    super(first_name, last_name)
    @health = DEFAULT_HEALTH
    @strength = DEFAULT_STRENGTH

    talk("Created #{full_name}")
  end

  def alive?
    # Shortest
    health > 0

    # Shorter
    #  health => 0 ? true : false
  end


  #decrease players health
  def take_damage(attack_strength)
    @health -= attack_strength
  end


  #attack another player with this players strength
  def attack(opponent)
    if alive?
      opponent.take_damage(strength)
      talk("#{full_name} is attacking #{opponent.full_name}")
    else
      puts "This play is dead! Cannot attack"
    end
  end

end
