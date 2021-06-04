def cleanup(str)
  was_symbol = false
  new_str = str.chars.map do |char|
    if char =~ /[a-z]/
      was_symbol = false
      char
    elsif was_symbol == true

    else
      was_symbol = true
      " "
    end
  end
  new_str.join()
end

puts cleanup("---what's my +*& line?") == ' what s my line '
