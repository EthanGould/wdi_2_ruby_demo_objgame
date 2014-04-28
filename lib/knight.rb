require_relative 'player'
module GAGame
  class Knight < Player

    #define class variable
    @@total_knights = 0

    def self.total_knights
      @@total_knights
    end

    DEFAULT_HEALTH = 50
    DEFAULT_STRENGTH = 15

    def initialize(first_name, last_name)
      super
      @strength = DEFAULT_STRENGTH
      @health  = DEFAULT_HEALTH
      @@total_knights += 1
    end
  end
end
