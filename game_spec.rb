require './game'
require "rspec"

describe 'game of life' do
  subject { Cell.new(0, 1) }
  it 'rule #1 Any live cell with fewer than two live neighbours dies, as if caused by under-population.' do
    subject.neighbors.count.should == 0 # expecting starting state of cell to have 0 neighbors
  end
end

describe 'game of life' do
  it 'rule #2 Any live cell with two or three live neighbours lives on to the next generation.' do
    # cell.neighbors.count.should == 0 # expecting starting state of cell to have 0 neighbors
  end
end

describe 'game of life' do
  it 'rule #3 Any live cell with more than three live neighbours dies, as if by overcrowding.' do
    # cell.neighbors.count.should == 0 # expecting starting state of cell to have 0 neighbors
  end
end

describe 'game of life' do
  it 'rule #4 Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.' do
    # cell.neighbors.count.should == 0 # expecting starting state of cell to have 0 neighbors
  end
end


# needs
# board/world class
# cell class
# x and y instance vars
# neighbours method
# visualize method or class - reqresent game state. via console? html? pdf of current state?
# method to detect neighbors in each direction.. or maybe just one spawn_at method?
# cell live and cell die methods? spawn_at method
# world is responsible for killing and 'birthing' cells (can also make case otherwise)