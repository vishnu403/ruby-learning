require "./problem3"

describe "get players last name" do
    it "should return player last name" do
        players = [['r', 'kelly'], ['50', 'cent'], ['miley', 'cyrus']]
        expect(get_player_lastname(players)).to eql(["kelly","cent","cyrus"])
    end
end        