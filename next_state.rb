class Next
    attr_accessor :turn_mapping
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
        @move_mapping = {
            "N" => "y",
            "S" => "y",
            "E" => "x",
            "W" => "x",
        }
        
    end   
    def move(current_coordinate, current_direction, plateau)
      if(current_direction == "N" or current_direction == "W")
          new_coordinate = move_forward(current_coordinate, @move_mapping[current_direction], plateau)
          return new_coordinate
      else
          new_coordinate = move_backward(current_coordinate, @move_mapping[current_direction], plateau)
          return new_coordinate
      end  
    end
    def turn(current_direction, turn_direction)
      return(@turn_mapping[current_direction.to_s+turn_direction.to_s])
    end
    def move_forward(current_coordinate, axis, plateau)
       if(axis == "y")
        value = current_coordinate.y.to_i + 1;
        if(plateau.checkBoundry(value, axis))
          current_coordinate.y = value
        end
       elsif (axis == "x")
        value = current_coordinate.x.to_i + 1;
        if(plateau.checkBoundry(value, axis))
          current_coordinate.x = value
        end
       end
       return current_coordinate 
    end 
    def move_backward(current_coordinate, axis, plateau)
        if (axis == "y")
            value = current_coordinate.y.to_i - 1;
            if(plateau.checkBoundry(value, axis))
              current_coordinate.y = value
            end
        elsif (axis == "x")
            value = current_coordinate.x.to_i - 1;
            if(plateau.checkBoundry(value, axis))
              current_coordinate.x = value
            end
        end    
        return current_coordinate 
    end            
end