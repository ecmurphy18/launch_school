def swapcase(str)
  str.chars.map { |e|
    if e =~ /[a-z]/
      e.upcase
    else
      e.downcase
    end
  }.join
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
