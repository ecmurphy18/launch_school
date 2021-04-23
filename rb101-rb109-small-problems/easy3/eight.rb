def palindrome?(str)
  index = 0
  loop do
    break if index == str.length-1-index || index + 1 == str.length-1-index
    return false if str[index] != str[str.length-1-index]
    index+=1
  end
  true
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true
