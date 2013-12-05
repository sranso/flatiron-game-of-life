require "debugger"

class Cell
  attr_accessor :x, :y, :state, :destiny

  def initialize(y, x)
    # REWRITE SO YOU DON'T HAVE TO INITIALIZE WITH PARAMETERS
    # CELLS SHOULD KNOW WHICH WORLD THEY'RE A PART OF..?
    @y = y
    @x = x
    @state = make_state
    @destiny
  end

  def make_state
    if rand(0..1) == 0
      init_state = "o"
    else
      init_state = "."
    end
    init_state
  end


  def neighbor_check(world)
    neighbors = []
    world.world_array.each do |array|
      array.each do |cell|
        # only add live cells to the neighbor count
        # is there a neighbor to the top left
        if (@y - 1 == cell.y) && (@x - 1 == cell.x)
          neighbors << cell if cell.state == "o"
        end
        # is there a neighbor directly above
        if (@y - 1 == cell.y) && (@x == cell.x)
          neighbors << cell if cell.state == "o"
        end
        # is there a neighbor to the top right
        if (@y - 1 == cell.y) && (@x + 1 == cell.x)
          neighbors << cell if cell.state == "o"
        end
        # is there a neighbor to the right
        if (@y == cell.y) && (@x + 1 == cell.x)
          neighbors << cell if cell.state == "o"
        end
        # is there a neighbor to the bottom right
        if (@y + 1 == cell.y) && (@x + 1 == cell.x)
          neighbors << cell if cell.state == "o"
        end
        # is there a neighbor directly below
        if (@y + 1 == cell.y) && (@x == cell.x)
          neighbors << cell if cell.state == "o"
        end
        # is there a neighbor to the bottom left
        if (@y + 1 == cell.y) && (@x - 1 == cell.x)
          neighbors << cell if cell.state == "o"
        end
        # is there a neighbor to the left
        if (@y == cell.y) && (@x - 1 == cell.x)
          neighbors << cell if cell.state == "o"
        end
      end
    end
    neighbors
  end

  def create_destiny(world) # o live, . die
    neighbors = neighbor_check(world)
    # debugger
    if state == "o"
      @destiny = "." if neighbors.count < 2
      # debugger
      @destiny = "." if neighbors.count > 3
      @destiny = "o" if neighbors.count == 3
      @destiny = "o" if neighbors.count == 2
    else
      @destiny = "o" if neighbors.count == 3
      @destiny = "." if neighbors.count != 3
      # debugger
    end
  end

  def tick
    # make state of each cell its destiny
    @state = @destiny
  end

end
