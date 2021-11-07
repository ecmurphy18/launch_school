# fizz buzz
# method takes two arguments (startingNo, endingNo)
# print out all numbers
# but if divisible by 3, print Fizz
# if divisible by 5, print Buzz
# if both, FizzBuzz

def fizzbuzz(startingNo, endingNo)
  Array(startingNo..endingNo).each do |num|
    printString(num)
  end
end

def printString(num)
  if num % 3 == 0 && num % 5 == 0
    puts "FizzBuzz"
  elsif num % 3 == 0
    puts "Fizz"
  elsif num % 5 == 0
    puts "Buzz"
  else
    puts num
  end
end

fizzbuzz(1, 15)
