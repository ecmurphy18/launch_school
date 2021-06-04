def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(digits, n)
  arr = digits.to_s.split('').map(&:to_i)
  new_arr = arr[0..-(n+1)] + rotate_array(arr[(arr.length-n)..-1])
  new_arr.to_s.delete!("[, ]").to_i
end

puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917
