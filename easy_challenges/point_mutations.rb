class DNA

  def initialize(str)
    @dna = str
  end

  def hamming_distance(str)
    hamming_str = str.chars
    count = 0
    @dna.chars.each_with_index do |char, i|
      return count if hamming_str[i] == nil
      count+=1 unless char == hamming_str[i]
    end
    return count
  end

end
