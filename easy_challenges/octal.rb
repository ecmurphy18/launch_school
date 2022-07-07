class Octal

  def initialize(str)
    @octal = str
  end

  def to_decimal
    results = []
    @octal.chars.each_with_index do |char, index|
      return 0 if (char.to_i == 0 && char != '0') || char.to_i > 7
      results << char.to_i * 8**(@octal.length-1-index)
    end
    results.sum
  end

end
