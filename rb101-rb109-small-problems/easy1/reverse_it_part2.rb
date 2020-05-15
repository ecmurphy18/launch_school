def reverse_words(word)
  str_arr = word.split
  new_string = ""
  str_arr.each do |item|
    if item.length > 4 
      new_string += item.reverse
      new_string += " " 
    else 
      new_string += item
      new_string += " " 
    end
  end 
  puts new_string
end

puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')
