require 'bundler'
Bundler.require

Dir.glob('./lib/*.rb') do |model|
  require model
end

module Name
  class App < Sinatra::Application
    # @@world = World.new
    @@game = Game.new


    #routes
    get '/' do
      # @@world = Game.new
      @@game.world.turn_world
      @local_game = @@game
      # @local_world.world.turn_world
      # @local_world.inspect
      erb :index
    end

    #helpers
    helpers do
      def partial(file_name)
        erb file_name, :layout => false
      end
    end

  end
end
