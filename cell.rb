require "debugger"

class Cell
  attr_reader :neighbors
  attr_accessor :x, :y, :state

  ALL_CELLS = []

  def initialize(y, x)
    @y = y
    @x = x
    @neighbors = []
    @state = "live"
    ALL_CELLS << self
  end

  def neighbor_check
    ALL_CELLS.each do |cell|
      # is there a neighbor to the top left
      neighbors << cell if (self.y - 1 == cell.y) && (self.x - 1 == cell.x)
      # is there a neighbor directly above
      neighbors << cell if (self.y - 1 == cell.y) && (self.x == cell.x)
      # is there a neighbor to the top right
      neighbors << cell if (self.y - 1 == cell.y) && (self.x + 1 == cell.x)
      # is there a neighbor to the right
      neighbors << cell if (self.y == cell.y) && (self.x + 1 == cell.x)
      # is there a neighbor to the bottom right
      neighbors << cell if (self.y + 1 == cell.y) && (self.x + 1 == cell.x)
      # is there a neighbor directly below
      neighbors << cell if (self.y + 1 == cell.y) && (self.x == cell.x)
      # is there a neighbor to the bottom left
      neighbors << cell if (self.y + 1 == cell.y) && (self.x - 1 == cell.x)
      # is there a neighbor to the left
      neighbors << cell if (self.y == cell.y) && (self.x - 1 == cell.x)
    end
    neighbors
    dead_or_alive
  end

  def dead_or_alive
    if self.state == "live"
      self.state = "die" if self.neighbors.count < 2
      self.state = "die" if self.neighbors.count > 3
      # self.state="live" if self.neighbors.count == 2
      # self.state="live" if self.neighbors.count == 3
    else
      self.state = "live" if self.neighbors.count == 3
    end
    self
  end

end

# cell1 = Cell.new(0,0)
# # cell2 = Cell.new(0,1)
# cell3 = Cell.new(1,1)
# cell3.neighbor_check
# p cell3.state