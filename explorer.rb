class Explorer

  attr_accessor :name, :health

  def initialize(name)
    @name = name
    @health = 100
  end

  def status
    print "\nMy health is at #{self.health}, " + (self.health > 50 ? "so I'm pretty good\n" : "so I'm not so good\n")
  end

end

