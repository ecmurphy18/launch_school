words = "the flintstones rock"

# write your own titleize method

title = ""
words.split.each do |word|
  title << word.capitalize + " "
end

puts title
