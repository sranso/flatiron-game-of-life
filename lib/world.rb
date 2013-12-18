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
      end
    end
  end

end