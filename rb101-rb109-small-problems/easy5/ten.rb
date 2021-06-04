def print_in_box(sentence)
  border_string = "+#{'-' * (sentence.size + 2)}+"
  empty_string = "|#{' ' * (sentence.size + 2)}|"
  puts border_string
  puts empty_string
  puts "|" + " " + sentence + " " + "|"
  puts empty_string
  puts border_string
end

print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+
