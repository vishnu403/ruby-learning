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

describe "get sum of elements of an array" do
  it "should return sum of array elements" do
    array = [1, 2, 3, 4]
    expect(get_sum(array)).to eql(10)
  end
end

describe "getting union of two arrays" do 
  it "should return an empty array" do
    array1 = []
    array2 = []
    expect(get_union(array1, array2)).to eql([])
  end
  it "should return an array with all elements in array1 ad array2" do
    array1 = [1,2,3]
    array2 = [4,5,6]
    expect(get_union(array1, array2)).to eql([1,2,3,4,5,6])
  end
  it "should return array by removing the duplicate elements" do
    array1 = [1,2,3]
    array2 = [3,4,4]
    expect(get_union(array1,array2)).to eql([1,2,3,4])
  end
end

describe "should return an array with elemnets that are only in array1 and not in array2" do
  it "should return an empty array in case of first array being empty" do
    array1 = []
    array2 = [1,2]
    expect(get_processed_array(array1,array2)).to eql([])
  end
  it "should return an first array elements as no element is there in array2" do
    array1 = [1,2,3,4]
    array2 = [5,6,7,8]
    expect(get_processed_array(array1, array2)).to eql([1,2,3,4])
  end
  it "should return only elements that are in array1 and not in array2" do
    array1 = [1,2,3,4]
    array2 = [2,4,5,6]
    expect(get_processed_array(array1,array2)).to eql([1,3])
  end
end
