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
    Membership.all.select{|membership| membership.member == self}
  end 

  def gyms 
    memberships.map{|membership| membership.gym}
  end 

  def self.avg_lift_total
    lift_totals = @@all.map{|lifter|lifter.lift_total}.inject(:+)
    lift_totals/ (@@all.count)
  end 

  def total_cost
    memberships.map{|membership|membership.cost}.inject(:+)
  end 

  def sign_me_up(gym, cost)
    Membership.new(cost, gym, self)
  end 
end
