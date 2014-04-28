require_relative 'player'
require_relative 'magic'

module GAGame
  class Wizard < Player

    #class variable
    @@total_wizards = 0

    #create a class method tht will return
    #the clas variable @@total_wizards
    #Wizard.total_wizards
    def self.total_wizards
      @@total_wizards
    end

    include Magic

    DEFAULT_HEALTH = 20
    DEFAULT_STRENGTH = 75

    attr_reader :health, :strength

    def initialize(first_name, last_name)
      super
      @strength = DEFAULT_STRENGTH
      @health = DEFAULT_HEALTH
      @@total_wizards += 1
    end
  end
end
