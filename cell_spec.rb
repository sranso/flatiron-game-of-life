require "./cell"
require "./world"
require "rspec"

describe 'game of life' do
  test_world = World.new

  it 'should be able to live' do
    #
  end

  it 'should be able to die' do
    #
  end

  it 'should be able to count its neighbors' do
    #
  end

  it 'should know where it is on the board' do
    #
  end

  it 'rule #1 Any live cell with fewer than two live neighbours dies, as if caused by under-population.' do
    expect(test_world.world_array_y[3][3].state).to eq("die") if test_world.world_array_y[3][3].neighbors.count < 2
  end

  it 'rule #2 Any live cell with two or three live neighbours lives on to the next generation.' do
    expect(test_world.world_array_y[0][0].state).to eq("live") if (test_world.world_array_y[0][0].neighbors.count == 2) || (test_world.world_array_y[0][0].neighbors.count == 3)
  end

  it 'rule #3 Any live cell with more than three live neighbours dies, as if by overcrowding.' do
    expect(test_world.world_array_y[3][3].state).to eq("die") if test_world.world_array_y[3][3].neighbors.count > 3
  end

  it 'rule #4 Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.' do
    expect(test_world.world_array_y[0][0].state).to eq("live") if test_world.world_array_y[0][0].neighbors.count == 3
  end
end


# visualize method or class - reqresent game state. via console? html? pdf of current state?
# method to detect neighbors in each direction.. or maybe just one spawn_at method?
# cell live and cell die methods? spawn_at method

