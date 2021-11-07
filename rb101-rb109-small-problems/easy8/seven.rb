
# double char (part 1)
# write a method that takes a string and returns a new string
# in which every character is doubled

def repeater(str)
  result = ''
  str.each_char do |char|
    result << char << char
  end
  result
end

puts repeater('Hello') == "HHeelllloo"
puts repeater('Good job!') == 'GGoooodd  jjoobb!!'
puts repeater('') == ''
