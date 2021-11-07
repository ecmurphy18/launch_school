def show_multiplicative_average (arr)
  result = 1
  arr.each do |num|
    result = result * num
  end
  result = result / arr.size
  puts "The result is #{format('%.3f', result)}"
end

puts show_multiplicative_average([3, 5])                # => The result is 7.500
puts show_multiplicative_average([6])                   # => The result is 6.000
puts show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
