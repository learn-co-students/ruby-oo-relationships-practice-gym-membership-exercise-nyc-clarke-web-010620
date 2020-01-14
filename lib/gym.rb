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
    Membership.all.select do |membership|
      membership.gym == self
    end
  end

  def lifters
    self.memberships.map do |membership|
      membership.lifter
    end
  end

  def lifter_name
    self.lifters.map do |lifter|
      lifter.name
    end
  end

  def total_gym
    total = 0
    self.lifters.each do |lifter|
    total = total + lifter.lift_total
    end
    total
  end
end
