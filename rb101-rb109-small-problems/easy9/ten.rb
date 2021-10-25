def buy_fruit(arr)
  new_arr = []
  arr.each do |inner_arr|
    inner_arr[1].times do
      new_arr << inner_arr[0]
    end
  end
  new_arr
end

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas", "bananas"]
