class Board
  attr_accessor :spaces, :size

  def initialize(size)
    @size = size
    @spaces = *(1..@size**2-1)
    @spaces << "x"
  end

  def marker_position
    @spaces.index("x")
  end

end