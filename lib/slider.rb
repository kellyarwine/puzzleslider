require 'board'

class PuzzleSlider
	attr_accessor :board
	
	def initialize
		@board = Board.new(16)
	end

	def get_move
		puts "Please enter your move: (u,d,l,r)"
		
		case gets.chomp
			when "u" then up
			when "d" then down
			when "l" then left
			when "r" then right
			else
				puts "Invalid selection.  Please try again."
				get_move
		end
	end

	def right
		if @board.marker_position % 4 == 0

		marker = @board.marker_position
		left_space = @board.spaces[marker + 1]

		@board.spaces[marker] = left_space
		@board.spaces[marker+1] = "x"


		@board.spaces
	end

	def left
		marker = @board.marker_position
		right_space = @board.spaces[marker - 1]

		@board.spaces[marker] = right_space
		@board.spaces[marker-1] = "x"

		@board.spaces
	end

	def up
		marker = @board.marker_position
		below_space = @board.spaces[marker - 4]

		@board.spaces[marker] = below_space
		@board.spaces[marker-4] = "x"

		@board.spaces
	end

	def down
		marker = @board.marker_position
		above_space = @board.spaces[marker + 4]

		@board.spaces[marker] = above_space
		@board.spaces[marker + 4] = "x"

		@board.spaces
	end
end
