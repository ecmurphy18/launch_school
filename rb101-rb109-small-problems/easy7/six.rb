def staggered_case(str)
  i = 0
  newStr = str.chars.map { |e|
    if !(e =~ /[a-zA-z]/)
      e
    elsif i.odd?
      e.downcase!
      i+=1
    else
      e.upcase!
      i+=1
    end
    e
  }.join
  newStr
end

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
