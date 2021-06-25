def triangle(num)
  str = ""
  num.times {
    str << " "
  }
  puts str
  while num > 0 do
    str[num] = "*"
    puts str
    num = num-1
  end
end

triangle(5)
triangle(9)
