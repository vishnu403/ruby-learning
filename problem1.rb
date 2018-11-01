class Rover
    attr_accessor :x, :y, :direction
    def initialize(x, y, direction)
      @x = x
      @y = y
      @direction = direction      
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
              @y = @y+1
            elsif @direction == "S"
              @y = @y-1
            elsif @direction == "E"
              @x = @x+1 
            elsif @direction == "W"
              @x = @x-1
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

top_corners = gets().split()

rovers = Array.new()
j = 0
while(rover = gets.split())
  if(rover[0] == "exit")
    break
  else
    rovers[j] = Rover.new(rover[0].to_i, rover[1].to_i, rover[2])
  end
  path = gets.chomp()
  rovers[j].move(path)
  j += 1
end

for rover in rovers
  rover.display()
end




# finished = Array.new()
# j = 0
# while(rover = gets().split())
#     if rover[0] == "exit"
#         break
#     else
#         x = rover[0].to_i
#         y = rover[1].to_i
#         direction = rover[2]    
#     end
#     movement = gets().chomp()
#     i = 0
#     while i < movement.length()
#       case movement[i]
#         when "L"
#         #   puts('left turn')
#           if direction == "N"
#             direction = "W"
#           elsif direction == "S"
#             direction = "E"
#           elsif direction == "E"
#             direction = "N"  
#           elsif direction == "W"
#             direction = "S"
#           end   
#         when "M"
#         #   puts("straight move")
#           if direction == "N"
#             y = y+1
#           elsif direction == "S"
#             y = y-1
#           elsif direction == "E"
#             x = x+1  
#           elsif direction == "W"
#             x = x-1
#           end
#         when "R"
#         #   puts("right move")
#           if direction == "N"
#             direction = "E"
#           elsif direction == "S"
#             direction = "W"
#           elsif direction == "E"
#             direction = "S"  
#           elsif direction == "W"
#             direction = "N"
#           end         
#       end    
#       i+=1
#     end
#     rover[0] = x
#     rover[1] = y
#     rover[2] = direction
#     finished[j] = rover
#     j = j+1
# end
# for rover in finished
#  puts(rover[0].to_s+" "+rover[1].to_s+" "+rover[2])
# end    
# puts("exited")    