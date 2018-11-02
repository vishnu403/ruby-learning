class Problem1 
  attr_accessor :array
  def initialize( array )
    @array = array    
  end
  def get_biggie
    if(@array.include?("biggie"))
      return "biggie"
    else
      return nil      
    end    
  end    
end

def get_sl_no(array)  
  array.each_with_index do |color, index|
    array[index] = [color, index+1]
  end
  return array  
end      

def get_player_lastname(players)
  new_players = Array.new()  
  players.map do |first,second|
    new_players.push(second)
  end
  return new_players  
end    