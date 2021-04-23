array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
# creates an array with all those names
array2 = []
# creates an empty array
array1.each { |value| array2 << value }
# array2 now contains all the values of array1
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2
# array2 will contain the transformations
