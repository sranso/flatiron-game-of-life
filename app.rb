require 'bundler'
Bundler.require

Dir.glob('./lib/*.rb') do |model|
  require model
end
      # <div class="cell" style="<%=cell.state == "." ? @black : @blue %>"></div>
module Name
  class App < Sinatra::Application
    @@game = Game.new
    @@game.glider

    get '/' do
      @@game.world.turn_world
      @local_game = @@game
      @black = 'background-color: black;'
      @blue = 'background-color: blue;'
      erb :index
    end

  end
end
