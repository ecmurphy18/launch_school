def print_row(grid_size, distance_from_center)
  no_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * no_of_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance)}
  1.upto(max_distance) { |distance| print_row(grid_size, distance)}
end

puts 1
puts diamond(1)

puts 3
puts diamond(3)

puts 5
puts diamond(5)

puts 13
puts diamond(13)
