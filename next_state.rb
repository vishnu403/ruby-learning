class Next
    attr_accessor :mapping
    def initialize
        @turn_mapping = {
            "NL" => "E",
            "NR" => "W",
            "EL" => "S",
            "ER" => "N",
            "SL" => "W",
            "SR" => "E",
            "WL" => "N",
            "WR" => "S",
        }
    end   
    def move(current_coordinate, current_direction)
      if(direction == "N" or direction == "W")
          
      else
         
      end  
    end
    def turn(current_direction, turn_direction)
      return(@turn_mapping[current_direction.to_s+turn_direction.to_s])
    end        
end