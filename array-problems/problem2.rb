def get_sl_no(array)  
  array.each_with_index do |color, index|
    array[index] = [color, index+1]
  end
  return array  
end      
