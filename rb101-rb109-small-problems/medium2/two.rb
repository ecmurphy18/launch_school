require 'pry'

def block_word?(str)
  blocks = {
    "B" => "O",
    "G" => "T",
    "V" => "I",
    "X" => "K",
    "R" => "E",
    "L" => "Y",
    "D" => "Q",
    "F" => "S",
    "Z" => "M",
    "C" => "P",
    "J" => "W",
    "N" => "A",
    "H" => "U",
  }
  str.chars.each do |s|
    s.upcase!
    if (blocks.keys.include? s)
      return false if str.include? blocks[s]
    end
  end
  true
end

puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
puts block_word?('jest') == true
