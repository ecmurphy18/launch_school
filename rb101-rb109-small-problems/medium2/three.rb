def letter_percentages(str)
  hsh = {lowercase: 0,
         uppercase: 0,
         neither: 0}

  str.chars.each do |char|
    if ('a'..'z').include? char
      return 'this is a lowercase'
    else
      return 'this is an uppercase'
    end
  end
end


puts letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
puts letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
puts letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
