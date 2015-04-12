class Game

  attr_accessor :fuel, :food, :bandages, :ammo
  
  def initialize(fuel = 0,food = 0, bandages = 0, ammo = 0)
    @fuel = fuel
    @food = food
    @bandages = bandages
    @ammo = ammo
  end
end
