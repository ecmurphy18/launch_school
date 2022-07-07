class SumOfMultiples

  # attr_reader :multiples

  def self.to(num)
    SumOfMultiples.new().to(num)
  end

  def initialize(*multiples)
    @multiples = (multiples.size > 0) ? multiples : [3,5]
  end

  def to(num)
    numbers = []
    @multiples.each do |val|
      multiple = val
      while multiple < num
        numbers << multiple
        multiple = multiple + val
      end
    end
    numbers.uniq.sum
  end


end
