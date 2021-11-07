words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
         'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
         'flow', 'neon']

def find_anagrams(words)
  anagrams = {}
  words.each do |word|
    sorted_chars = word.chars.sort.join('')
    if anagrams.has_key? sorted_chars
      anagrams[sorted_chars] << word
    else
      anagrams[sorted_chars] = [word]
    end
  end
  filtered = anagrams.select do |key, value|
    value.length > 1
  end
  filtered.values.to_a
end

puts find_anagrams(words) == [['demo', 'dome', 'mode'], ['none', 'neon'],
['tied', 'diet', 'edit', 'tide'], ['evil', 'live', 'veil', 'vile'],
['fowl', 'wolf', 'flow']]
