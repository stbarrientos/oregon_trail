require_relative "explorer.rb"
require_relative "game.rb"

class LevelOne < Game

  attr_accessor :explorers

  def initialize(explorers = [])
    @explorers = []
  end

  def start
    set_explorers
    hunting?
    trade?
    camp?
    raid?
  end

  def set_explorers
    4.times do |x|
      puts "Explorer #{x + 1} name: "
      @explorers << Explorer.new(gets.chomp)
    end
  end

  def hunting?
    puts "Do you want to go hunting? (+Food)\n1) Yes\n2) No"
    if gets.chomp == "1"
      food = ["deer", "snake","bird", "lion"].sample
      if food == "snake" || food == "lion"
        @health -=10
        puts "You fool, you tried to hunt a #{food}! You lose 10 health"
      else
        @food += 10
        puts "You hunt a #{food}! You harvest +10 food!"
    else
      @food -= 10
    end
  end

  def trade?
  end

  def camp?
  end

  def raid?
  end

end

LevelOne.new.start
