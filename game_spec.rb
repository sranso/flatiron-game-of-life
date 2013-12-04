require './codealong'
require "rspec"

describe 'game of life' do
  it 'rule #1 Any live cell with fewer than two live neighbours dies, as if caused by under-population.'
    cell = Cell.new
    cell.neighbours_count.should == 0 # expecting starting state of cell to have 0 neighbors
end

# Any live cell with two or three live neighbours lives on to the next generation.
# Any live cell with more than three live neighbours dies, as if by overcrowding.
# Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.

# needs
# board/world class
# cell class
# x and y instance vars
# neighbours method
# visualize method or class - reqresent game state. via console? html? pdf of current state?
# method to detect neighbors in each direction.. or maybe just one spawn_at method?
# cell live and cell die methods? spawn_at method
# world is responsible for killing and 'birthing' cells (can also make case otherwise)