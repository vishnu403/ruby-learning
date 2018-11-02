require "./problem1.rb"

describe Problem1 do 
  describe "get biggie from the array" do 
    it "should return string biggie" do
      arr = ['hello', 'biggie', 'zomato']  
      array = Problem1.new(arr)   
      expect(array.get_biggie()).to eql("biggie")
    end
    it "should return nil " do 
      arr = ['hello', 'kings', 'zomato']
      array = Problem1.new(arr)
      expect(array.get_biggie()).to eql(nil)
    end      
  end  
end

describe "Problem: insert sl.no in colors" do
  it "should return array of arrays with each containing color and a sl-no" do
    array = ['red','violet']
    expect(get_sl_no(array)).to eql([['red',1],['violet',2]])
  end
  it "should return array of arrays with each containing color and a sl-no" do
    array = ['red','violet','blue']
    expect(get_sl_no(array)).to eql([['red',1],['violet',2],['blue',3]])
  end  
end    

describe "get players last name" do
  it "should return player last name" do
      players = [['r', 'kelly'], ['50', 'cent'], ['miley', 'cyrus']]
      expect(get_player_lastname(players)).to eql(["kelly","cent","cyrus"])
  end
end 

describe "get combination of two arrays" do
  it "should return an array of arrays" do
    nums = [1, 2, 3]
    letters = ['a', 'b', 'c']
    expect(get_combined_array(nums, letters)).to eql([[1, "a"], [1, "b"], [1, "c"], [2, "a"], [2, "b"], [2, "c"], [3, "a"], [3, "b"], [3, "c"]])
  end
end    