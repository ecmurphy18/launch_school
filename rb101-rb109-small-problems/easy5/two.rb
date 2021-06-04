def time_of_day(num)
  if num > 0
    num >= 60 ? hours = (num / 60) % 24 : hours = 0
    mins = num % 60
    return "#{hours.to_s.rjust(2, "0")}:#{mins.to_s.rjust(2, "0")}"
  elsif num < 0
    num = -num
    num >= 60 ? hours = num / 60 : hours = 0
    mins = num % 60
    hours = 23 - (hours % 24)
    mins = 60 - (mins % 60)
    return "#{hours.to_s.rjust(2, "0")}:#{mins.to_s.rjust(2, "0")}"
  else
    return "00:00"
  end
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"
