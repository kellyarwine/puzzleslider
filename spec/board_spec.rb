require 'board'

describe Board do

  let(:subject) { Board.new(4) }

  it "has an array of spaces that are strings" do
    subject.spaces = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,"x"]
  end

  it "has a size of the board" do
    subject.size.should == 4
  end

  it "get current position of marker" do
    subject.spaces = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,"x"]
    subject.marker_position.should == 15
  end

end
