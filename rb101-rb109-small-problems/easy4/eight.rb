NUMBERS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_signed_integer(str)
  sign = ''
  if str.chars[0] == '-'
    sign = 'negative'
    str.slice!(0)
  elsif str.chars[0] == '+'
    sign = 'positive'
    str.slice!(0)
  else
    sign = 'positive'
  end
  numbers = str.chars.map { |c| NUMBERS[c] }

  value = 0
  numbers.each { |n| value = 10 * value + n }
  sign == 'positive' ? value : -value
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
