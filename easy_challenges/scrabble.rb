class Scrabble

  def initialize(str)
    @word = str
  end

  def score
    return 0 if @word.nil?
    @word.chars.reduce (0) { |sum, val| sum + calculate_value(val)}
  end

  def self.score(word)
    new_word = Scrabble.new(word)
    new_word.score
  end


  def calculate_value(val)
    case val.upcase
    when 'A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'
      1
    when 'D', 'G'
      2
    when 'B', 'C', 'M', 'P'
      3
    when 'F', 'H', 'V', 'W', 'Y'
      4
    when 'K'
      5
    when 'J', 'X'
      8
    when 'Q', 'Z'
      10
    else
      0
    end
  end
end
