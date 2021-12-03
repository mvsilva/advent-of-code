class PowerConsumption

  def self.read_input file_name
    File.readlines(file_name, chomp: true)
  end

  def self.calculate
    reading = read_input "input.txt"
    hash = {}
    reading.first.split('').each_with_index do |num, i|
      hash[i] = {:zeros => 0, :ones => 0}
    end

    reading.each do |num|
      num.split('').each_with_index do |bit, i|
        bit == '1' ? hash[i][:ones] +=1 : hash[i][:zeros] += 1
      end
    end

    gamma_rate = hash.map{|k,v| v[:ones] > v[:zeros] ? '1' : '0'}
    epsilon_rate = hash.map{|k,v| v[:ones] > v[:zeros] ? '0' : '1'}
    final_calculation = to_decimal(gamma_rate.join) * to_decimal(epsilon_rate.join)

  end

  def self.to_decimal binary
    binary.reverse.chars.map.with_index do |digit, index|
      digit.to_i * 2**index
    end.sum
  end
end
