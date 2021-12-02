require_relative './submarine'

class Course

  def self.read_input file_name
    File.readlines(file_name, chomp: true).map{
      |line| [line.split(' ').first, line.split(' ').last.to_i]
    }
  end

  def self.submarine_position
    plan = read_input("input_test.txt")
    submarine = Submarine.new

    plan.each do |pos|
      submarine.send(pos.first, pos.last)
    end

    submarine.position
  end

end
