def staggered_case(str)
  newStr = str.chars.map.with_index { |e, i|
    if !(e =~ /[a-zA-z]/)
      e
    elsif i.odd?
      e.downcase!
    else
      e.upcase!
    end
    e
  }.join
  newStr
end

puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
