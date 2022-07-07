class PerfectNumber

  def self.classify(num)
    raise StandardError if num < 1

    divisors = (1..num).select { |n| num % n == 0  && num != n}
    sum = divisors.reduce(0) {|sum, value| sum + value}
    if sum == num
      'perfect'
    elsif sum > num
      'abundant'
    elsif sum < num
      'deficient'
    end
  end

end
