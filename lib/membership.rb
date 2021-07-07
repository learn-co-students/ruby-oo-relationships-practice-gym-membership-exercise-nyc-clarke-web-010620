class Membership
  attr_reader :cost, :gym, :member 

  @@all = []
  def initialize(cost, gym, member)
    @cost = cost
    @gym = gym 
    @member = member 

    @@all << self 
  end

  def self.all
    @@all
  end 

end
