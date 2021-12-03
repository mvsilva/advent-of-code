require "test/unit"
require_relative './power_consumption'

class PowerConsumptionTest < Test::Unit::TestCase

  def test_calculate
    assert_equal 198, PowerConsumption.calculate, "PowerConsumption.calculate should return the power consumption of the submarine"
  end
end
