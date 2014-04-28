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
  puts "Code man attacks game_man"
  code_man.attack(game_man)
  puts "Game man health is #{game_man.health}"
  puts "Game man is " + (game_man.alive? ? "Alive" : "Dead")
end

puts "Game Man has been vanquished"

knight1 = Knight.new("Ethan", "Gould")
puts "Created knight, #{knight1.full_name} with a strength of #{knight1.strength}"
puts "and a health of #{knight1.health}"

wizard1 = Wizard.new("Harry", "Potter")
puts "Created wizard, #{wizard1.full_name} with a strength of #{wizard1.strength}"
puts "and a health of #{wizard1.health}"

puts "#{knight1.full_name} attacks #{wizard1.full_name}"
knight1.attack(wizard1)
puts "#{wizard1.full_name}'s' health is #{wizard1.health}"
puts "#{wizard1.full_name} is " + (wizard1.alive? ? "Alive" : "Dead")
