# require "./cell"
require "debugger"

class World
  attr_reader :board

  def initialize
    create_world
  end

  def create_world
    @board = []
    30.times do |y|
      rows = []
      30.times do |x|
        rows << Cell.new(y, x)
      end
      @board << rows
    end
  end

  def turn_world
    # assign destiny
    @board.each do |y| # 30 times
      y.each do |x| # 30 times
        x.create_destiny(self)
      end
    end
    # tick!
    @board.each do |y| # 30 times
      y.each do |x| # 30 times
        x.tick!
        # debugger
      end
    end
    # set new world
    sleep(0.2)
    shows_world
  end

  def shows_world
    @board.each do |y|
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