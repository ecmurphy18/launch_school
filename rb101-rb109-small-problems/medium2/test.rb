def repeated_substring_pattern(str)
  index = 1
  half_string_size = str.length / 2
  while index <= half_string_size
    substring = str[0,index]
    until (substring.length > str.length) do
      # puts "here's what substring.length is ", substring.length
      # puts "here's what str.length is ", str.length
      if substring == str
        return true
      end
      substring = substring + substring
    end
    index += 1
  end
  return false

end

puts repeated_substring_pattern('abab') == true
puts repeated_substring_pattern('ababa') == false
puts repeated_substring_pattern('abcabcabcabc') == true
puts repeated_substring_pattern('abcdeabcde') == true
puts repeated_substring_pattern('abcabcacabc') == false
puts repeated_substring_pattern('aaaaaa') == true
