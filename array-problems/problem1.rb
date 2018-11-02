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