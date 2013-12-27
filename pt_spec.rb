require './pt'

describe "#pt" do
	it "should return nth row of Pascal triangle" do
		expect(pt(0)).to eq([1])
		expect(pt(1)).to eq([1, 1])
		expect(pt(2)).to eq([1, 2, 1])
		expect(pt(3)).to eq([1, 3, 3, 1])
		expect(pt(4)).to eq([1, 4, 6, 4, 1])			 
	end
end