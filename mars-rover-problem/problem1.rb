require_relative "rover.rb"
require_relative "plateau.rb"
require_relative "coordinate.rb"
require_relative "north.rb"
require_relative "south.rb"
require_relative "east.rb"
require_relative "west.rb"


bottom_corner = Coordinate.new(0,0)
point = gets().split()
top_corner = Coordinate.new(point[0], point[1]) 
plateau = Plateau.new(bottom_corner, top_corner)

rovers = Array.new()
j = 0
while(rover = gets.split())
  if(rover[0] == "exit")
    break
  else
    rover_init_coordinate = Coordinate.new(rover[0].to_i,rover[1].to_i)
    direction = rover[2]
    if direction == "N"
      rover_init_direction = North.new()
    elsif direction == "S"
      rover_init_direction = South.new()
    elsif direction == "E"
      rover_init_direction = East.new()
    else
      rover_init_direction = West.new()
    end
    rovers[j] = Rover.new(rover_init_coordinate, rover_init_direction, plateau)
  end
  path = gets.chomp()
  rovers[j].track(path)
  j += 1
end

for rover in rovers
  rover.display()
end
