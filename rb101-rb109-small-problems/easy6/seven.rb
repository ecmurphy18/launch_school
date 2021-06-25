def halvsies(arr)
  nested_arrays = []
  half, remainder = arr.size.divmod(2)
  if remainder > 0
    half = half + 1
  end
  nested_arrays = [arr.slice(0,half), arr.slice(half, arr.size)]
end

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]
