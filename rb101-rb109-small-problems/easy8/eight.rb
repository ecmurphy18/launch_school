CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(str)
  result = ''
  str.each_char do |char|
    result << char
    result << char if CONSONANTS.include?(char.downcase)
  end
  result
end

puts double_consonants('String') == "SSttrrinngg"
puts double_consonants('Hello-World!') == "HHellllo-WWorrlldd!"
puts double_consonants('July 4th') == "JJullyy 4tthh"
puts double_consonants('') == ""
