# def word_to_digit(sentence)
#   sentence.split.each do |word|
#     case
#     when word.include?('zero') then sentence.gsub!(/\b#{word}\b/, "0")
#     when word.include?('one') then sentence.gsub!(/\b#{word}\b/, "1")
#     when word.include?('two') then sentence.gsub!(/\b#{word}\b/, "2")
#     when word.include?('three') then sentence.gsub!(/\b#{word}\b/, "3")
#     when word.include?('four') then sentence.gsub!(/\b#{word}\b/, "4")
#     when word.include?('five') then sentence.gsub!(/\b#{word}\b/, "5")
#     when word.include?('six') then sentence.gsub!(/\b#{word}\b/, "6")
#     when word.include?('seven') then sentence.gsub!(/\b#{word}\b/, "7")
#     when word.include?('eight') then sentence.gsub!(/\b#{word}\b/, "8")
#     when word.include?('nine') then sentence.gsub!(/\b#{word}\b/, "9")
#     else
#     end
#   end
#   sentence
# end

# the above code fails because there's a full stop after the four
# that seems to be causing the regex to fail. i think that's cause the
# b tells it to look for complete words

DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}.freeze

def word_to_digit(words)
  DIGIT_HASH.keys.each do |word|
    words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
  end
  words
end

puts word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'
