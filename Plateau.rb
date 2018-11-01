class Plateau
    attr_accessor :top_corner, :bottom_corner
    def initialize(bottom_corner, top_corner)
        @top_corner = top_corner
        @bottom_corner = bottom_corner
        
    end

    def checkBoundry(value,axis)
      case axis
       when "y"
        if(value <= @top_corner[1].to_i and value >= @bottom_corner[1].to_i)
            return true
        else
            return false
        end        
       when "x"
        if(value <= @top_corner[0].to_i and value >= @bottom_corner[0].to_i)
            return true
        else
            return false
        end      
      end  
    end    
end