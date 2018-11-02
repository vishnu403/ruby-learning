class Next 
    def move(current_coordinate, current_direction, plateau)
        new_coordinate = current_direction.get_new_coordinate(current_coordinate, plateau)
        return new_coordinate  
    end
    def turn(current_direction, turn_direction)
       new_direction = current_direction.get_new_direction(turn_direction)  
       return new_direction
    end
              
end