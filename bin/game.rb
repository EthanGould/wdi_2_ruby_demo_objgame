require 'pry'
require_relative '../lib/person.rb'
require_relative '../lib/player.rb'
require_relative '../lib/knight.rb'
require_relative '../lib/wizard.rb'

puts "Starting the game!"
binding.pry

jack = Person.new("Jack", "Sparrow")

puts "Created #{jack.full_name}"

game_man = Player.new("Matt", "Brendzel")
puts "Game man's health is #{game_man.health}"

puts "Game man's health is #{game_man.health}"
game_man.take_damage(10)
puts "Game man health is #{game_man.health} "
puts "Game man is " + (game_man.alive? ? "Alive" : "Dead")

code_man = Player.new("Tom", "Dyer")
while( game_man.alive?)
  puts "Game man attacks game_man"
  code_man.attack(game_man)
  puts "Game man health is #{game_man.health}"
  puts "Game man is " + (game_man.alive? ? "Alive" : "Dead")
end

puts "Game Man has been vanquished"

knight1 = Knight.new("Ethan", "Gould")
puts "The knights name is #{knight1.full_name} with a strength of #{knight1.strength}"

wizard1 = Wizard.new("Harry", "Potter")
puts "The wizards name is #{wizard1.full_name} with a strength of #{wizard1.strength}"
