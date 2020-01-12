class Gym
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name

    @@all << self 
  end

  def self.all
    @@all
  end 

  def memberships 
    Membership.all.select{|membership|membership.gym == self}
  end 

  def lifters 
    memberships.map{|membership|membership.member}
  end 

  def names 
    lifters.map{|lifter|lifter.name}
  end 

  def lift_total
    lifters.map{|lifter|lifter.lift_total}.inject(:+)
  end 
end
