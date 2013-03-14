require 'slider'

class Game

  def initialize
    @slider = PuzzleSlider.new
  end

  def run_game
    @slider.get_move
  end
  
end