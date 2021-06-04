NUMBER_NAMES = %w(zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen)

def alphabetic_number_sort(arr)
  sorted_arr = []
  NUMBER_NAMES.sort.each do |name|
    sorted_arr.push(NUMBER_NAMES.index(name)) if arr.include?(NUMBER_NAMES.index(name))
  end
  sorted_arr
end

puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
