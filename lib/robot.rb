class Robot
  attr_reader :x, :y, :facing

  def place(x, y, facing = "NORTH")
    @x = x
    @y = y
    @facing = facing
  end

  def current_place
    [@x, @y, @facing]
  end
end
