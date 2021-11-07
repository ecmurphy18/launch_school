# write a method that takes a positive integer as an argument
# and returns that number with its digits reversed.

def reversed_numbers(num)
  str = num.to_s
  str.reverse!
  str.to_i
end

puts reversed_numbers(12345) == 54321
puts reversed_numbers(12213) == 31221
puts reversed_numbers(456) == 654
puts reversed_numbers(12000) == 21
puts reversed_numbers(12003) == 30021
puts reversed_numbers(1) == 1
