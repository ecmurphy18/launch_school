def uppercase?(str)
  str.chars.each do |char|
    if ('a'..'z').include? char
      return false
    end
  end
  return true
end

puts uppercase?('t') == false
puts uppercase?('T') == true
puts uppercase?('Four Score') == false
puts uppercase?('FOUR SCORE') == true
puts uppercase?('4SCORE!') == true
puts uppercase?('') == true
