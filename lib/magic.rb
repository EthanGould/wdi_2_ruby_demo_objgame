module GAGame
  module Magic

    def cast_spell(opponent)
      puts "casting spell on #{opponent.full_name}!"
    end

    def say_spelll(opponent)
      cast_spell(opponent)
      %x{ say "Casting spell on #{opponent.full_name}"}
    end
  end
end
