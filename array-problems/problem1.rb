class Problem1 
  attr_accessor :array
  def initialize( array )
    @array = array    
  end
  def get_biggie
    @array.each do |ele|
      if ele == "biggie"
        return ele
      end 
    end    
  end    
end    