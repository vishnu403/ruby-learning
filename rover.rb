require_relative "coordinate.rb"
require_relative "next_state.rb"

class Rover
    attr_accessor :coordinate, :direction, :plateau
    def initialize(coordinate, direction, plateau)
      @coordinate = coordinate
      @direction = direction
      @plateau = plateau      
    end
    def track(path)
      i = 0
      next_state = Next.new()
      while i < path.length()
        if path[i] == "M"
           new_coordinate = next_state.move(@coordinate, @direction, @plateau)
           @coordinate = new_coordinate
        elsif ( path[i] == "L" or path[i] == "R" )
           new_direction = next_state.turn(@direction, path[i])
           @direction = new_direction
        end
            
        i+=1
      end
    end
    def display()
      puts(@coordinate.x.to_s+" "+@coordinate.y.to_s+" "+@direction.notation)
    end        
end