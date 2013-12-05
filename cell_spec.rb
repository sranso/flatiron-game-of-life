require "./cell"
require "./world"
require "rspec"
require "debugger"

describe 'game of life' do
  test = World.new
  test.turn_world
  

  # can't figure out syntax for '.' OR 'live' on expect line
  # it 'should be either dead or alive' do
  #   world_array1 = [[Cell.new(0,0), Cell.new(0,1), Cell.new(0,2)], [Cell.new(1,0), Cell.new(1,1), Cell.new(1,2)], [Cell.new(2,0), Cell.new(2,1), Cell.new(2,2)]]
  #   expect(world_array1[2][1].state).to be(".") || be("live")
  # end

  # it 'should be able to count its neighbors' do
  #   world_array = [[Cell.new(0,0), Cell.new(0,1), Cell.new(0,2)], [Cell.new(1,0), Cell.new(1,1), Cell.new(1,2)], [Cell.new(2,0), Cell.new(2,1), Cell.new(2,2)]]
  #   expect(world_array[0][0].neighbor_check.count).to eq(3)
  # end

  # it 'rule #1 Any live cell with fewer than two live neighbours dies, as if caused by under-population.' do
  #   world_array = [[Cell.new(0,0), Cell.new(0,1).tap { |x| x.state="."}, Cell.new(0,2)], [Cell.new(1,0).tap { |x| x.state="."}, Cell.new(1,1), Cell.new(1,2)], [Cell.new(2,0), Cell.new(2,1), Cell.new(2,2)]]
  #   expect(world_array[0][0].tick.state).to eq(".")
  # end

  # it 'rule #2 Any live cell with two or three live neighbours lives on to the next generation.' do
  #   # test = World.new
  #   # test.stub(:new => [[Cell.new(0,0), Cell.new(0,1), Cell.new(0,2)], [Cell.new(1,0), Cell.new(1,1), Cell.new(1,2)], [Cell.new(2,0), Cell.new(2,1), Cell.new(2,2)]])
  #   # world_array = [[Cell.new(0,0), Cell.new(0,1), Cell.new(0,2)], [Cell.new(1,0), Cell.new(1,1), Cell.new(1,2)], [Cell.new(2,0), Cell.new(2,1), Cell.new(2,2)]]
  #   expect(world_array[0][0].tick.state).to eq("o")
  # end

  # it 'rule #3 Any live cell with more than three live neighbours dies, as if by overcrowding.' do
  #   world_array = [[Cell.new(1,2), Cell.new(1,2), Cell.new(1,2)], [Cell.new(1,2), Cell.new(1,2), Cell.new(1,2)], [Cell.new(1,2), Cell.new(1,2), Cell.new(1,2)]]
  #   expect(world_array[1][1].tick.state).to eq(".")
  # end

  # it 'rule #4 Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.' do
  #   # test = World.new
  #   # test.stub(:new => [[Cell.new(0,0).state=".", Cell.new(0,1), Cell.new(0,2)], [Cell.new(1,0), Cell.new(1,1), Cell.new(1,2)], [Cell.new(2,0), Cell.new(2,1), Cell.new(2,2)]])
  #   world_array1 = [[Cell.new(0,0).tap { |x| x.state="." }, Cell.new(0,1), Cell.new(0,2)], [Cell.new(1,0), Cell.new(1,1), Cell.new(1,2)], [Cell.new(2,0), Cell.new(2,1), Cell.new(2,2)]]
  #    # world_array1[0][0].state = 'o' if world_array1[0][0].neighbor_check.count == 9
  #   # world_array1[0][0].tick
  #   # debugger
  #   expect(world_array1[0][0].tick.state).to eq("o")
  # end
end


