require 'pry'
require_relative '../lib/gym'
require_relative '../lib/lifter'
require_relative '../lib/membership'


l1 = Lifter.new("John", 435)
l2 = Lifter.new("Tom", 657)
l3 = Lifter.new("Harry", 256)
l4 = Lifter.new("Sarah", 156)
l5 = Lifter.new("Peter", 256)

g1 = Gym.new("NY Sports Club")
g2 = Gym.new("NY Sports Club")
g3 = Gym.new("NY Sports Club")
g4 = Gym.new("NY Sports Club")
g5 = Gym.new("NY Sports Club")

m1 = Membership.new(40, g3, l3)
m2 = Membership.new(120, g2, l4)
m3 = Membership.new(40, g1, l2)
m3 = Membership.new(60, g5, l5)
m3 = Membership.new(80, g1, l1)


binding.pry
