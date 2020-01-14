class Lifter

  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all 
    @@all
  end

  def memberships
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  def lifters
    self.membership.map do |membership|
      membership.gym
    end
  end

  def self.avg_lift_total
    total = 0
    self.all.each do |lifter| 
      total = total + lifter.lift_total
    end
    total / self.all.count
  end

  def total_cost
    total = 0
      self.memberships.each do |membership|
       total = total + membership.cost
      end
    total 
  end

  def new_membership(cost, gym)
     Membership.new(cost, gym, self)
  end
  
end
