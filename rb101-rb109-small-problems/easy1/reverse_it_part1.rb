def reverse_sentence(string) 
  arr = string.split(" ")
  reverse_arr = []
  arr.each do |item| 
    reverse_arr.unshift(item)
  end
  string = ""
  reverse_arr.each do |word|
    string += "#{word} "
  end
  puts string
end

reverse_sentence('')
reverse_sentence('Hello World')
reverse_sentence('Reverse these words')
