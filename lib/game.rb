class Game
  attr_reader :world

  def initialize
    @world = World.new
  end

  def blinker
    world.board[0][1].state = "crimson"
    world.board[1][1].state = "crimson"
    world.board[2][1].state = "crimson"
    world.board[3][14].state = "crimson"
    world.board[4][14].state = "crimson"
    world.board[5][14].state = "crimson"
    world.board[13][24].state = "crimson"
    world.board[14][24].state = "crimson"
    world.board[15][24].state = "crimson"
  end

  def toad
    world.board[0][1].state = "crimson"
    world.board[1][1].state = "crimson"
    world.board[2][1].state = "crimson"
    world.board[3][14].state = "crimson"
    world.board[4][14].state = "crimson"
    world.board[5][14].state = "crimson"
    world.board[13][24].state = "crimson"
    world.board[14][24].state = "crimson"
    world.board[15][24].state = "crimson"
  end

  def glider
    world.board[1][1].state = "crimson"
    world.board[1][3].state = "crimson"
    world.board[2][2].state = "crimson"
    world.board[2][3].state = "crimson"
    world.board[3][2].state = "crimson"
    world.board[20][22].state = "crimson"
    world.board[21][21].state = "crimson"
    world.board[21][22].state = "crimson"
    world.board[22][21].state = "crimson"
    world.board[22][23].state = "crimson"
  end

  def lightweight_spaceship
    world.board[14][12].state = "crimson"
    world.board[14][13].state = "crimson"
    world.board[15][10].state = "crimson"
    world.board[15][11].state = "crimson"
    world.board[15][13].state = "crimson"
    world.board[15][14].state = "crimson"
    world.board[16][10].state = "crimson"
    world.board[16][11].state = "crimson"
    world.board[16][12].state = "crimson"
    world.board[16][13].state = "crimson"
    world.board[17][11].state = "crimson"
    world.board[17][12].state = "crimson"
  end


  def random
    glider if rand(0..2) == 0
    blinker if rand(0..2) == 0
    toad if rand(0..2) == 0
    lightweight_spaceship if rand(0..2) == 0
  end

end