# palindromic substrings
# case matters
# single letters should not be considered palindromes

def leading_substrings(str)
  arr = []
  0.upto(str.size - 1) do |index|
    arr << str[0..index]
  end
  arr
end

def substrings(str)
  arr = []
  0.upto(str.size-1) do |index|
    arr.concat(leading_substrings(str[index..str.length]))
  end
  arr
end

def palindromes(str)
  arr = []
  allStrings = substrings(str)
  allStrings.each do |string|
    if (string.length > 1 && (string === string.reverse))
      arr << string
    end
  end
  arr
end

puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == ['ll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo']
puts palindromes('knitting cassettes') == ['nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt']
