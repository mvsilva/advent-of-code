class Sonar

  def self.scan file_name
    file_data = measures_arr(file_name)

    count_number_descents file_data
  end

  def self.scan3 file_name
    file_data = measures_arr(file_name)
    new_arr = []
    file_data.each_with_index do |measurement, i|
      if !file_data[i+1].nil? && !file_data[i+2].nil?
        new_arr << measurement + file_data[i+1] + file_data[i+2]
      end
    end

    count_number_descents new_arr
  end

  def self.count_number_descents arr
    control_measurement = arr[0]

    descent_number = 0
    arr.each do |measurement|
      if measurement > control_measurement
        descent_number += 1
      end

      control_measurement = measurement
    end

    descent_number
  end

  def self.measures_arr file_name
    File.readlines(file_name, chomp: true).map(&:to_i)
  end

end
