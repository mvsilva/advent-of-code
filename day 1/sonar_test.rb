require "test/unit"
require_relative './sonar'

class SonarTest < Test::Unit::TestCase

  def test_scan
    assert_equal 7, Sonar.scan("input_test.txt"), "Sonar.scan should return the number of increasing measurements"
  end

  def test_scan3
    assert_equal 5, Sonar.scan3("input_test.txt"), "Sonar.scan should return the number of increasing SUM measurements"
  end
end
