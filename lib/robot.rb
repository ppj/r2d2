class Robot
  attr_reader :x, :y, :facing

  def place(x, y, facing = "NORTH")
    @x = x
    @y = y
    @facing = facing
  end

  def report
    [@x, @y, @facing]
  end

  def move
    @y = @y + 1
  end
end
