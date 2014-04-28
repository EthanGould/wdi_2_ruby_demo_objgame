require_relative 'player'
module GAGame
  class Knight < Player

    DEFAULT_HEALTH = 50
    DEFAULT_STRENGTH = 15

    def initialize(first_name, last_name)
      super
      @strength = DEFAULT_STRENGTH
      @health  = DEFAULT_HEALTH
    end
  end
end
