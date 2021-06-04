def crunch(str)
  current_char = ''
  new_str = ''
  str.chars.each do |char|
    if char == current_char
    else
      new_str << char
      current_char = char
    end
  end
  new_str
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
