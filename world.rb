require "./cell"
require "debugger"

class World
  attr_reader :world_array_y, :world_array_x

  def initialize
    create_world
  end

  def create_world
    @world_array_y = []
    50.times do |i|
      @world_array_x = []
      30.times do |ii|
        @world_array_x << Cell.new(i, ii)
      end
      @world_array_y << @world_array_x
    end
  end

  def new_world_array
    @new_world_array_y = []
    @world_array_y.each do |y|
      @new_world_array_x = []
      @world_array_x.each do |x|
        @new_world_array_x << x.tick
      end
      @new_world_array_y << @new_world_array_x
    end
  end

end

# test = World.new
# test.new_world_array
# p test.world_array_y[3][3].neighbor_check.state
# p test.world_array_y[0][0].state