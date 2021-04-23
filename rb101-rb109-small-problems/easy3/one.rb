numbers = []
turns = ['1st', '2nd', '3rd', '4th', '5th']

turns.each do |turn|
  puts "Enter the #{turn} number:"
  answer = gets.chomp
  numbers << answer
end

puts "Enter the last number: "
last_no = gets.chomp
puts "The number #{last_no} #{numbers.include?(last_no) ? 'appears' : 'does not appear'} in #{numbers}"
