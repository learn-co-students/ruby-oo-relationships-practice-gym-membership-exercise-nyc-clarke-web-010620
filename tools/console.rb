# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
l1 = Lifter.new("Granit",400)
l2 = Lifter.new("Ant",4000)
g1 = Gym.new("La Fitness")
g2 = Gym.new("NY Sports")
m1 = Membership.new(200,g1,l1)
m2 = Membership.new(100,g2,l1)
m3 = Membership.new(200,g1,l2)
binding.pry

puts "Gains!"
