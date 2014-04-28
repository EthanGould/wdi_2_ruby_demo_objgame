require 'pry'
require_relative '../lib/person.rb'
require_relative '../lib/player.rb'
require_relative '../lib/knight.rb'
require_relative '../lib/wizard.rb'

puts "Starting the game!"
binding.pry

jack = GAGame::Person.new("Jack", "Sparrow")

puts "Created #{jack.full_name}"

game_man = GAGame::Player.new("Matt", "Brendzel")
puts "Created #{game_man.full_name} with health of #{game_man.health}"
puts "and strength #{game_man.strength}"

# game_man.take_damage(10)
# puts "Game man health is #{game_man.health} "
# puts "Game man is " + (game_man.alive? ? "Alive" : "Dead")

code_man = GAGame::Player.new("Tom", "Dyer")
puts "Created #{code_man.full_name} with health of #{code_man.health}"
puts "and strength #{code_man.strength}"
# while( game_man.alive?)
#   puts "Code man attacks game_man"
#   code_man.attack(game_man)
#   puts "Game man health is #{game_man.health}"
#   puts "Game man is " + (game_man.alive? ? "Alive" : "Dead")
# end

knight2 = GAGame::Knight.new("James", "Thulberry")
puts "Created knight, #{knight2.full_name}"
puts "with a strength of #{knight2.strength} and a health of #{knight2.health}"

knight1 = GAGame::Knight.new("Ethan", "Gould")
puts "Created knight, #{knight1.full_name}"
puts "with a strength of #{knight1.strength} and a health of #{knight1.health}"

wizard1 = GAGame::Wizard.new("Harry", "Potter")
puts "Created wizard, #{wizard1.full_name}"
puts "with a strength of #{wizard1.strength} and a health of #{wizard1.health}"

wizard2 = GAGame::Wizard.new("Tim", "Gould")
puts "Created wizard, #{wizard2.full_name}"
puts "with a strength of #{wizard2.strength} and a health of #{wizard2.health}"

puts "Total number of wizards = #{GAGame::Wizard.total_wizards}"
puts "Total number of knights = #{GAGame::Knight.total_knights}"
puts "Total number of players = #{GAGame::Player.total_players}"
