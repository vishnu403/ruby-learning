require_relative "Plateau.rb"

class Rover
    attr_accessor :x, :y, :direction, :plateau
    def initialize(x, y, direction, plateau)
      @x = x
      @y = y
      @direction = direction
      @plateau = plateau      
    end
    def move(path)
      i = 0
      while i < path.length()
        case path[i]
          when "L"
            if @direction == "N"
              @direction = "W"
            elsif @direction == "S"
              @direction = "E"
            elsif @direction == "E"
              @direction = "N"  
            elsif @direction == "W"
              @direction = "S"
            end    
          when "M"
            if @direction == "N"
                if(@plateau.checkBoundry(@y+1,"y"))  
                    @y = @y+1
                end  
            elsif @direction == "S"
                if(@plateau.checkBoundry(@y-1,"y"))  
                    @y = @y-1
                end 
            elsif @direction == "E"
                if(@plateau.checkBoundry(@x+1,"x"))  
                    @x = @x+1
                end 
            elsif @direction == "W"
                if(@plateau.checkBoundry(@x-1,"x"))  
                    @x = @x-1
                end 
            end   
          when "R"
            if @direction == "N"
              @direction = "W"
            elsif @direction == "S"
              @direction = "E"
            elsif @direction == "E"
              @direction = "N"  
            elsif @direction == "W"
              @direction = "S"
            end       
        end    
         i+=1
      end
    end
    def display()
      puts(@x.to_s+" "+@y.to_s+" "+@direction)
    end        
end