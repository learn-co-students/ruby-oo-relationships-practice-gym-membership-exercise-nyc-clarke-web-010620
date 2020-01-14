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

  def gyms 
    self.memberships.map do |membership|
      membership.gym
    end
  end

  def self.total_lift
    lift_array = self.all.map {|lifter|lifter.lift_total}
    lift_array.reduce(0) {|sum,weight| sum += weight}
  end

  def self.average_lift
    count = self.all.map {|lifter|lifter.lift_total}.count
    self.total_lift/count
  end
  
  def gym_price
    price = self.memberships.map{|gym|gym.cost}
    price.reduce(0) {|sum,cost| sum += cost}
  end

  def new_membership(cost,gym)
    Membership.new(cost,gym,self)
  end

end
