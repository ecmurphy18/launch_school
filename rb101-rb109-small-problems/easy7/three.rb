def word_cap(sentence)
  sentence.split(" ").map { |item|
    item.downcase!
    item[0] = item[0].upcase
    item
  }.join(" ")
end

puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
