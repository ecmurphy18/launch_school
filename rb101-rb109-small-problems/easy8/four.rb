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


puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
