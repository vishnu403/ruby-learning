require_relative "south.rb"
require_relative "north.rb"

class East
    attr_accessor :notation
    def initialize
        @notation = "E"        
    end
    def get_new_coordinate(coordinate, plateau)
        value = coordinate.x.to_i - 1;
        if(plateau.checkBoundry(value, "x"))
          coordinate.y = value
        end
        return coordinate
    end 
    def get_new_direction( turn_direction )
        if turn_direction == "L"
            new_direction = South.new()
        else
            new_direction = North.new()    
        end
        return new_direction    
    end    
end