class Game
  def attack(player_1, player_2)
    @players = [player_1, player_2]
    #player.receive_damage
  end
  
  def player_1
    @players.first
  end
  def player_2
    @players.last
  end
end