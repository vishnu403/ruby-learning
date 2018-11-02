class Subarray
    attr_accessor :block
    def initialize(color, sl_no)
       @block = Array.new(2)
       @block[0] = color
       @block[1] = sl_no 
    end
end
def get_sl_no(array)  
  i = 1 
  array.each do |color|
    arr = Subarray.new(color,i)
    array[i-1] = (arr.block)
    i+=1
  end
  return array  
end      
