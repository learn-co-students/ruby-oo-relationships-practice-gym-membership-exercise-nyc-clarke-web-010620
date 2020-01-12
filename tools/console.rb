# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
lifter1 = Lifter.new("nathan", 100)
lifter2 = Lifter.new("adam", 200)
lifter3 = Lifter.new("hannah", 300)
gym1 = Gym.new("golds")
gym2 = Gym.new("wow")
gym3 = Gym.new("yo")
membership1 = Membership.new(300, gym1, lifter1)
membership2 = Membership.new(400, gym2, lifter1)
membership3 = Membership.new(500, gym1, lifter2)
check = lifter1.memberships
check1 = lifter1.gyms
check2 = Lifter.avg_lift_total
check3 = lifter1.total_cost 
check4 = lifter1.sign_me_up(gym3, 600)
check5 =lifter1.memberships 
check6 = gym1.memberships
check7 = gym1.lifters
check8 = gym1.names 
check9 = gym1.lift_total
binding.pry

puts "Gains!"
