require "./cell"
require "debugger"

class World
  attr_reader :world_array

  def initialize
    create_world
  end

  def create_world
    @world_array = []
    30.times do |y|
      world_array_x = []
      30.times do |x|
        world_array_x << Cell.new(y, x)
      end
      @world_array << world_array_x
    end
    shows_world
  end

  def turn_world
    # assign destiny
    @world_array.each do |y| # 30 times
      y.each do |x| # 30 times
        x.create_destiny(self)
      end
    end
    # tick
    @world_array.each do |y| # 30 times
      y.each do |x| # 30 times
        x.tick
        # debugger
      end
    end
    # set new world
    sleep(0.5)
    shows_world
  end

  def shows_world
    @world_array.each do |y|
      y.each do |x|
        print "#{x.state}  "
      end
      puts
    end
    turn_world
  end

end

# test = World.new
# test.shows_world
# test.turn_world