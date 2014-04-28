require_relative 'player'
require_relative 'magic'

module GAGame
  class Wizard < Player

    include Magic

    DEFAULT_HEALTH = 20
    DEFAULT_STRENGTH = 75

    attr_reader :health, :strength

    def initialize(first_name, last_name)
      super
      @strength = DEFAULT_STRENGTH
      @health = DEFAULT_HEALTH
    end
  end
end
