def multiply_all_pairs(arr1, arr2)
  newArr = []
  arr1.each do |num|
    arr2.each do |num2|
      newArr << num * num2
    end
  end
  newArr.sort
end

puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
