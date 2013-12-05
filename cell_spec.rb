require "./cell"
require "./world"
require "rspec"
require "debugger"

describe 'game of life' do

  it 'should be able to live' do
    # 
  end

  it 'should be able to die' do
    # 
  end

  it 'should be able to count its neighbors' do
    world_array = [[Cell.new(0,0), Cell.new(0,1), Cell.new(0,2)], [Cell.new(1,0), Cell.new(1,1), Cell.new(1,2)], [Cell.new(2,0), Cell.new(2,1), Cell.new(2,2)]]
    expect(world_array[0][0].neighbor_check.count).to eq(3)
  end

  it 'rule #1 Any live cell with fewer than two live neighbours dies, as if caused by under-population.' do
    world_array = [[Cell.new(1,2), Cell.new(1,2).state="die", Cell.new(1,2)], [Cell.new(1,2).state="die", Cell.new(1,2), Cell.new(1,2)], [Cell.new(1,2), Cell.new(1,2), Cell.new(1,2)]]
    expect(world_array[0][0].tick.state).to eq("die")
  end

  it 'rule #2 Any live cell with two or three live neighbours lives on to the next generation.' do
    test_world = World.new
    world_array = [[Cell.new(1,2), Cell.new(1,2).state="die", Cell.new(1,2)], [Cell.new(1,2).state="die", Cell.new(1,2), Cell.new(1,2)], [Cell.new(1,2).state="die", Cell.new(1,2).state="die", Cell.new(1,2).state="die"]]
    expect(test_world.world_array_y[1][1].state).to eq("live")
  end

  it 'rule #3 Any live cell with more than three live neighbours dies, as if by overcrowding.' do
    world_array = [[Cell.new(1,2), Cell.new(1,2), Cell.new(1,2)], [Cell.new(1,2), Cell.new(1,2), Cell.new(1,2)], [Cell.new(1,2), Cell.new(1,2), Cell.new(1,2)]]
    expect(world_array[1][1].tick.state).to eq("die")
  end

  it 'rule #4 Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.' do
    test_world = World.new
    world_array = [[Cell.new(1,2).state="die", Cell.new(1,2), Cell.new(1,2)], [Cell.new(1,2), Cell.new(1,2), Cell.new(1,2)], [Cell.new(1,2), Cell.new(1,2), Cell.new(1,2)]]
    expect(test_world.world_array_y[0][0].state).to eq("live")
  end
end


# visualize method or class - reqresent game state. via console? html? pdf of current state?
# method to detect neighbors in each direction.. or maybe just one spawn_at method?
# cell live and cell die methods? spawn_at method

