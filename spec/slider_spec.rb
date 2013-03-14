require 'slider'
require 'board'

describe PuzzleSlider do

  let(:board) { Board.new(4) }
  let(:slider) { PuzzleSlider.new }

	it 'will move value right when we enter r' do
    slider.board.spaces = [1,2,3,4,5,6,7,8,9,10,11,12,"x",13,14,15]
		slider.right.should == [1,2,3,4,5,6,7,8,9,10,11,12,13,"x",14,15]
	end

  it 'will move value left when we enter l' do
    slider.board.spaces =  [1,2,3,4,5,6,7,8,9,10,11,12,"x",13,14,15]
    slider.left.should == [1,2,3,4,5,6,7,8,9,10,11,"x",12,13,14,15]
  end

  it 'will move value up when we enter u' do
    slider.board.spaces =  [1,2,3,4,5,6,7,"x",8,9,10,11,12,13,14,15]
    slider.up.should == [1,2,3,"x",5,6,7,4,8,9,10,11,12,13,14,15]
  end

  it 'will move value down when we enter d' do
    slider.board.spaces = [1,2,3,"x",5,6,7,4,8,9,10,11,12,13,14,15]
    slider.down.should == [1,2,3,4,5,6,7,"x",8,9,10,11,12,13,14,15]
  end
end