require "./problem2.rb"

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