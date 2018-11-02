def get_player_lastname(players)
  new_players = Array.new()  
  players.map do |first,second|
    new_players.push(second)
  end
  return new_players  
end    