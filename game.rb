require_relative './player'
require_relative './option_factory'

class Game
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def self.start(p1_name, p2_name)
    new(Player.new(p1_name), Player.new(p2_name)).print_winner
  end
 

  def print_winner
    player1.choose
    player2.choose 

    if player1.can_win? player2
      p "玩家#{player1.name}獲勝"
    else
      p "玩家#{player2.name}獲勝"
    end
  end
end
