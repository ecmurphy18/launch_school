def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(digits, n)
  arr = digits.to_s.split('').map(&:to_i)
  new_arr = arr[0..-(n+1)] + rotate_array(arr[(arr.length-n)..-1])
  new_arr.to_s.delete!("[, ]").to_i
end

def max_rotation(num)
  length = num.to_s.length
  final_arr = num
  length.downto(2) do |n|
    final_arr = rotate_rightmost_digits(final_arr, n)
  end
  final_arr
end

puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845
