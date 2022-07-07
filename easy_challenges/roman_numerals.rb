class RomanNumeral

  def initialize(num)
    @num = num
  end

  def to_roman
    num_as_str = @num.to_s
    to_be_converted = []
    num_as_str.chars.each_with_index do |char, index|
      to_be_converted << char.to_i * 10**(num_as_str.length-index-1) unless char == '0'
    end
    romafied = []
    to_be_converted.each do |item|
      romafied << romafy(item)
    end
    return romafied.join
  end

  def romafy(item)
    case item
    when 1..3
      "I"*item
    when 4
      "IV"
    when 5..8
      "V" + "I"*(item-5)
    when 9
      "IX"
    when 10..30
      "X" * (item/10)
    when 40
      "XL"
    when 50..80
      "L" + ("X" * (item/10 - 5))
    when 90
      "XC"
    when 100..300
      "C" * (item/100)
    when 400
      "CD"
    when 500..800
      "D" + ("C" * (item/100 - 5))
    when 900
      "CM"
    when 1000..3000
      "M" * (item/1000)
    end
  end

end

puts RomanNumeral.new(1234).to_roman
