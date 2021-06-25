def find_fibonacci_index_by_length(num)
  curr_no = 1
  last_fib_no = 1
  index = 2
  while curr_no.to_s.length < num
    total = curr_no + last_fib_no
    last_fib_no = curr_no
    curr_no = total
    index = index + 1
  end
  index
end

puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847
