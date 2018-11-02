require_relative "east.rb"
require_relative "west.rb"

class South
    attr_accessor :notation
    def initialize
        @notation = "S"        
    end
    def get_new_coordinate(coordinate, plateau)
        value = coordinate.y.to_i - 1;
        if(plateau.checkBoundry(value, "y"))
          coordinate.y = value
        end
        return coordinate
    end 
    def get_new_direction( turn_direction )
        if turn_direction == "L"
            new_direction = West.new()
        else
            new_direction = East.new()    
        end
        return new_direction    
    end    
end