require "debugger"

class Cell
  attr_accessor :x, :y, :state
  attr_reader :neighbors, :new_world

  ALL_CELLS = []

  def initialize(y, x)
    # REWRITE SO YOU DON'T HAVE TO INITIALIZE WITH PARAMETERS
    # CELLS SHOULD KNOW WHICH WORLD THEY'RE A PART OF..?
    @y = y
    @x = x
    @state = "live"
    # @@new_world = []
    ALL_CELLS << self
  end

  def neighbor_check
    # CHECK FOR EDGE CASES (LITERALLY).. do i need to though? they wont be live..
    neighbors = []
    ALL_CELLS.each do |cell|
      # is there a neighbor to the top left
      if (self.y - 1 == cell.y) && (self.x - 1 == cell.x)
        neighbors << cell if cell.state == "live"
      end
      # is there a neighbor directly above
      if (self.y - 1 == cell.y) && (self.x == cell.x)
        neighbors << cell if cell.state == "live"
      end
      # is there a neighbor to the top right
      if (self.y - 1 == cell.y) && (self.x + 1 == cell.x)
        neighbors << cell if cell.state == "live"
      end
      # is there a neighbor to the right
      if (self.y == cell.y) && (self.x + 1 == cell.x)
        neighbors << cell if cell.state == "live"
      end
      # is there a neighbor to the bottom right
      if (self.y + 1 == cell.y) && (self.x + 1 == cell.x)
        neighbors << cell if cell.state == "live"
      end
      # is there a neighbor directly below
      if (self.y + 1 == cell.y) && (self.x == cell.x)
        neighbors << cell if cell.state == "live"
      end
      # is there a neighbor to the bottom left
      if (self.y + 1 == cell.y) && (self.x - 1 == cell.x)
        neighbors << cell if cell.state == "live"
      end
      # is there a neighbor to the left
      if (self.y == cell.y) && (self.x - 1 == cell.x)
        neighbors << cell if cell.state == "live"
      end
    end
    neighbors
  end

  def tick
    if self.state == "live"
      self.state = "die" if self.neighbor_check.count < 2
      self.state = "die" if self.neighbor_check.count > 3
    else
      self.state = "live" if self.neighbor_check.count == 3
    end
      self
  end

end

# cell1 = Cell.new(0,0)
# # cell2 = Cell.new(0,1)
# cell3 = Cell.new(1,1)
# cell3.neighbor_check
# cell3.tick
