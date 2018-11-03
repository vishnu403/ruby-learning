class Problem1 
  attr_accessor :array
  def initialize( array )
    @array = array    
  end
  def get_biggie
    if(@array.include?("biggie"))
      return "biggie"
    else
      return nil      
    end    
  end    
end

def get_sl_no(array)  
  array.each_with_index do |color, index|
    array[index] = [color, index+1]
  end
  return array  
end      

def get_player_lastname(players) 
  players.collect {|first, last| last}
end

def get_combined_array(array1, array2)
  array1.product(array2)
end

def get_sum(array)
  array.sum()
end 

def get_union(array1, array2)
  array1 | array2
end

def get_processed_array(array1, array2)
  array1 - array2
end  

def get_hash(array)
  Hash[array.collect { |first,second| [first,second]}]
end

def get_even_elements(array)
  array.select { |x| x % 2 == 0 }
end

def get_consecutive_nos(array)
  array.slice_when do |prev, curr|
   curr != prev.next
  end.to_a
end