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
      erb :index
    end

  end
end
