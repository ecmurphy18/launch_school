def arr_lights_on(n)
  arr = []
  n.times { arr << false }
  n.times { |n|
    arr.map!.with_index { |bool, index|
      if ((index+1) % (n+1) == 0)
        !bool
      else
        bool
      end
    }
  }
  final_arr = []
  arr.each.with_index { |item, index|
    final_arr << (index+1) if item==true
  }
  final_arr
end
puts arr_lights_on(5) == [1,4]
puts "---------"
puts arr_lights_on(10) == [1,4,9]

puts arr_lights_on(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]
