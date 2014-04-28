require 'pry'
require_relative '../lib/person.rb'
require_relative '../lib/player.rb'

puts "Starting the game!"
binding.pry

jack = Person.new("Jack", "Sparrow")

puts "Created #{jack.full_name}"

game_man = Player.new("Matt", "Brendzel")
puts "Game man's health is #{game_man.health}"

puts "Game man is " + (game_man.alive? ? "Alive" : "Dead")
