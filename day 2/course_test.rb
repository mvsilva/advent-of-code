require "test/unit"
require_relative './course'

class CourseTest < Test::Unit::TestCase

  def test_submarine_position
    assert_equal 900, Course.submarine_position, "Course.submarine_position should return the position of the submarine after the course is complete"
  end
end
