puts ">> Please enter an integer greater than 0:"
num = gets.to_i
puts ">> Enter 's' to compute the sum, 'p' to compute the product."
computation = gets.chomp

if computation == 's'
  counter = num
  result = 0
  loop do
    result = result + counter
    counter = counter - 1
    break if counter == 0
  end
  puts "The sum of the integers between 1 and #{num} is #{result}."
elsif computation == 'p'
  counter = num
  result = 1
  loop do
    result = result * counter
    counter = counter - 1
    break if counter == 0
  end
  puts "The product of the integers between 1 and #{num} is #{result}."
else
  "Please enter 's' or 'p'"
end
