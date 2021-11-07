def interleave(arr1, arr2)
  newArray = []
  arr1.each_with_index do |item, index|
    newArray.push(item)
    newArray.push(arr2[index])
  end
  newArray
end

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
