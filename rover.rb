require_relative "coordinate.rb"
require_relative "next_state.rb"

class Rover
    attr_accessor :coordinate, :direction, :plateau
    def initialize(x, y, direction, plateau)
      @coordinate = Coordinate.new(x, y)
      @direction = direction
      @plateau = plateau      
    end
    def track(path)
      i = 0
      next_state = Next.new()
      while i < path.length()
        if path[i] == "M"
           new_coordinate = next_state.move(@coordinate, @direction)
           @coordinate = new_coordinate
        elsif ( path[i] == "L" or path[i] == "R" )
           new_direction = next_state.turn(@direction, path[i])
           @direction = new_direction
        end
          # case path[i]
        #   when "L"
        #     if @direction == "N"
        #       @direction = "W"
        #     elsif @direction == "S"
        #       @direction = "E"
        #     elsif @direction == "E"
        #       @direction = "N"  
        #     elsif @direction == "W"
        #       @direction = "S"
        #     end    
        #   when "M"
        #     if @direction == "N"
        #         if(@plateau.checkBoundry(@y+1,"y"))  
        #             @y = @y+1
        #         end  
        #     elsif @direction == "S"
        #         if(@plateau.checkBoundry(@y-1,"y"))  
        #             @y = @y-1
        #         end 
        #     elsif @direction == "E"
        #         if(@plateau.checkBoundry(@x+1,"x"))  
        #             @x = @x+1
        #         end 
        #     elsif @direction == "W"
        #         if(@plateau.checkBoundry(@x-1,"x"))  
        #             @x = @x-1
        #         end 
        #     end   
        #   when "R"
        #     if @direction == "N"
        #       @direction = "W"
        #     elsif @direction == "S"
        #       @direction = "E"
        #     elsif @direction == "E"
        #       @direction = "N"  
        #     elsif @direction == "W"
        #       @direction = "S"
        #     end       
        # end    
         i+=1
      end
    end
    def display()
      puts(@coordinate.x.to_s+" "+@coordinate.y.to_s+" "+@direction)
    end        
end