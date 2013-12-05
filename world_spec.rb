require './world'
require "rspec"

describe World do

  it 'should be able to create cell objects' do
    test = World.new
    expect(test.world_array.size).to eq(30)
  end

  describe "#turn_world" do
    it 'new world should be different from old world' do
      test = World.new
      # test.stub(:new => [[Cell.new(0,0), Cell.new(0,1), Cell.new(0,2)], [Cell.new(1,0), Cell.new(1,1), Cell.new(1,2)], [Cell.new(2,0), Cell.new(2,1), Cell.new(2,2)]])
      test2 = test
      test.turn_world
      test.should eq(test2)
      # (test.turn_world).should_not eq(test)
    end
  end

  # describe "#shows_world" do
  #   it 'should be able to show cells on the console' do
  #     test = World.new
  #     test.stub(:new => [[Cell.new(0,0), Cell.new(0,1), Cell.new(0,2)], [Cell.new(1,0), Cell.new(1,1), Cell.new(1,2)], [Cell.new(2,0), Cell.new(2,1), Cell.new(2,2)]])
  #     test.shows_world
  #     (test.shows_world).should_receive :puts
  #   end
  # end

  it 'should know where cells exist in the world' do # does it need to know this?
    #
  end

end