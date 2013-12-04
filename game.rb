# require "debugger"
class Cell
  attr_reader :neighbors
  attr_accessor :x, :y

  ALL_CELLS = []

  def initialize(y, x)
    @y = y
    @x = x
    @neighbors = []
    ALL_CELLS << self
  end

  def self.create_all_cells
    10.times do |i|
      10.times do |ii|
        Cell.new(i, ii)
      end
    end
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
  end

  # def awake_cell(x, y)
  #   Cell.new(x, y)
  # end

  # def kill_cell
    
  # end

end

cell1 = Cell.new(0,0)
cell2 = Cell.new(0,1)
cell3 = Cell.new(1,1)
cell3.neighbor_check
p cell3.neighbors.count