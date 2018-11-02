require "./problem1.rb"

describe Problem1 do 
  describe "get biggie from the array" do 
    it "should return string biggie" do
      arr = ['hello', 'biggie', 'zomato']  
      array = Problem1.new(arr)   
      expect(array.get_biggie()).to eql("biggie")
    end    
  end  
end    