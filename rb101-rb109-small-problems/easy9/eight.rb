def sequence(count, num)
  # num_array = []
  # index = 1
  # count.times do
  #   num_array << num * index
  #   index += 1
  # end
  # num_array

  (1..count).map do |value| value * num end
end

puts sequence(5, 1) == [1, 2, 3, 4, 5]
puts sequence(4, -7) == [-7, -14, -21, -28]
puts sequence(3, 0) == [0, 0, 0]
puts sequence(0, 1000000) == []
