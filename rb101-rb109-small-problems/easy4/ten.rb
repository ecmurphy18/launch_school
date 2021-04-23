NUMBERS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def signed_integer_to_string(num)
  sign = ''
  if num < 0
    sign = 'negative'
    num = -num
  else
    sign = 'positive'
  end
  str = ''
  while ((num % 10) != num) do
    str << NUMBERS[num % 10]
    num = num / 10
  end
  str << NUMBERS[num % 10]
  return '0' if str == '0'
  sign == 'positive' ? "+#{str.reverse}" : "-#{str.reverse}"
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
