def center_of(str)
  center_index = str.size / 2
  if str.size.odd?
    str[center_index]
  else
    str[center_index - 1, 2]
  end
end

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'
