input_path = File.expand_path("input.txt", File.dirname(__FILE__))

# Part 1
calibration_values = File.readlines(input_path).map do |line|
  numbers = line.scan(/\d/)

  [numbers.first, numbers.last].join.to_i
end.compact

puts "The sum of all calibration values is: #{calibration_values.sum}"

# Part 2
NUMBERS = {"one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9}

calibration_values = File.readlines(input_path).map do |line|
  numbers = line.scan(/(?=(\d|one|two|three|four|five|six|seven|eight|nine))/).flatten
  numbers.map! { |number| NUMBERS.fetch(number, number) }

  [numbers.first, numbers.last].join.to_i
end.compact

puts "The TRUE sum of all calibration values is: #{calibration_values.sum}"
