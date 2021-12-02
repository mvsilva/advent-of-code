class Submarine
  attr_reader :horizontal, :depth

  def initialize
    @horizontal = 0
    @depth = 0
  end

  def horizontal
    @horizontal
  end

  def depth
    @depth
  end

  def setHorizontal(val)
    @horizontal = val
  end

  def setDepth(val)
    @depth = val
  end

  def forward(val)
    @horizontal += val
  end

  def up(val)
    @depth -= val
  end

  def down(val)
    @depth += val
  end

  def position
    @horizontal * @depth
  end
end
