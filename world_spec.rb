require './world'
require "rspec"

describe World do

  it 'should be able to create cell objects' do
    test_world = World.new
    expect(test_world.world_array_y.size).to eq(50)
  end

  describe "#tick" do
    it 'should be able to tick through another state of the world' do
      
    end
  end

  it 'should be able to tell cells to die' do
    #
  end

  it 'should be able to tell cells to live' do
    #
  end

  it 'should be able to show cells on the console' do
    #
  end

  it 'should know where cells exist in the world' do # does it need to know this?
    #
  end

end