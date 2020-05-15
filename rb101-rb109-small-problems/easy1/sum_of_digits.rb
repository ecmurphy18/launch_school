def sum(num)
  str = num.to_s
  arr = str.chars.map(&:to_i) 
  arr.reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
