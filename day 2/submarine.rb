class Submarine
  attr_reader :horizontal, :depth, :aim

  def initialize
    @horizontal = 0
    @depth = 0
    @aim = 0
  end

  def horizontal
    @horizontal
  end

  def depth
    @depth
  end

  def aim
    @aim
  end

  def setHorizontal(val)
    @horizontal = val
  end

  def setDepth(val)
    @depth = val
  end

  def forward(val)
    @horizontal += val
    @depth += @aim * val
  end

  def up(val)
    # part 1 - @depth -= val
    @aim -= val
  end

  def down(val)
    # part 1 - @depth += val
    @aim += val
  end

  def position
    @horizontal * @depth
  end
end
