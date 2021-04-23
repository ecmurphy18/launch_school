statement = "The Flintstones Rock"

# create a hash that expresses the frequency that each
# character occurs in this string

freq_hash = {}
statement.chars.each do |char|
  if freq_hash[char]
    freq_hash[char] = freq_hash[char] + 1
  else
    freq_hash[char] = 1
  end
end

puts freq_hash
