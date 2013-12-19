require 'bundler'
Bundler.require

Dir.glob('./lib/*.rb') do |model|
  require model
end

module Name
  class App < Sinatra::Application

    get '/' do
      @@game = Game.new
      erb :choosegame
    end

    post '/' do
      @@game.send(params["game"])
      @local_game = @@game
      erb :chosengame
    end

    get '/gameoflife' do
      @@game.world.turn_world
      @local_game = @@game
      erb :gameoflife
    end

  end
end
