# method takes one arg
# the arg is a positive int
# returns a string
# string always starts with 1 
# string alternates 1s and 0s 
# length of string should match given int

def stringy(num)
  numbers = []
  num.times do |index|
    number = index.even? ? 1 : 0 
    numbers << number 
  end

  numbers.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
