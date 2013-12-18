require 'bundler'
Bundler.require

Dir.glob('./lib/*.rb') do |model|
  require model
end

module Name
  class App < Sinatra::Application
    @@game = Game.new
    @@game.glider

    get '/' do
      @@game.world.turn_world
      @local_game = @@game
      @white = 'background-color: white;'
      @crimson = 'background-color: crimson;'
      erb :index
    end

  end
end
