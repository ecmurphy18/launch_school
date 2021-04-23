hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

# using the each method, write some code to output all the vowels from the strings

hsh.each do |key, value|
  value.each do |word|
    word.chars.each do |char|
      if 'aeiou'.include?(char) 
        puts char
      end
    end    
  end
end
