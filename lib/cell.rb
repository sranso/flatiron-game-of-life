class Cell
  attr_accessor :y, :x, :state, :destiny

  def initialize(y, x)
    # CELLS SHOULD KNOW WHICH WORLD THEY'RE A PART OF..?
    @y = y
    @x = x
    @state = "white"
    @destiny
  end

  def neighbor_check(world)
    neighbors = []
    world.board.each do |array|
      array.each do |cell|
        # only add live cells to the neighbor count
        # is there a neighbor to the top left
        if (@y - 1 == cell.y) && (@x - 1 == cell.x)
          neighbors << cell if cell.state == "blue"
        end
        # is there a neighbor directly above
        if (@y - 1 == cell.y) && (@x == cell.x)
          neighbors << cell if cell.state == "blue"
        end
        # is there a neighbor to the top right
        if (@y - 1 == cell.y) && (@x + 1 == cell.x)
          neighbors << cell if cell.state == "blue"
        end
        # is there a neighbor to the right
        if (@y == cell.y) && (@x + 1 == cell.x)
          neighbors << cell if cell.state == "blue"
        end
        # is there a neighbor to the bottom right
        if (@y + 1 == cell.y) && (@x + 1 == cell.x)
          neighbors << cell if cell.state == "blue"
        end
        # is there a neighbor directly below
        if (@y + 1 == cell.y) && (@x == cell.x)
          neighbors << cell if cell.state == "blue"
        end
        # is there a neighbor to the bottom left
        if (@y + 1 == cell.y) && (@x - 1 == cell.x)
          neighbors << cell if cell.state == "blue"
        end
        # is there a neighbor to the left
        if (@y == cell.y) && (@x - 1 == cell.x)
          neighbors << cell if cell.state == "blue"
        end
      end
    end
    neighbors
  end
  def create_destiny(world) # o live, . die
    neighbors = neighbor_check(world)
    if state == "blue"
      @destiny = "white" if neighbors.count < 2
      @destiny = "white" if neighbors.count > 3
      @destiny = "blue" if neighbors.count == 3
      @destiny = "blue" if neighbors.count == 2
    else
      @destiny = "blue" if neighbors.count == 3
      @destiny = "white" if neighbors.count != 3
    end
  end

  def tick! # make state of each cell its destiny
    @state = @destiny
  end

end
