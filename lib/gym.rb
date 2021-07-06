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
    Membership.all.select do |memberships|
      memberships.gym == self
    end 
  end

  def lifters_in_gym
    self.memberships.map do |memberships|
      memberships.lifter
    end
  end

  def names_lifters_in_gym
    self.memberships.map do |memberships|
      memberships.lifter.name
    end
  end

  def total_lift
    total = self.memberships.map {|memberships| memberships.lifter.lift_total}
    total.reduce(0) {|sum,lifter| sum += lifter}
  end
end
