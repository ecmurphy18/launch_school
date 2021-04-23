# build a program that asks a user for the length
# and width of a room in meters and then displays
# the area of the room in both square meters and
# square feet 

# note: 1 sq meter is == 10.7639 square feet

def request_measurement(type)
  puts "What is the #{type} of the room (in m)?"
  measurement = gets.chomp.to_i
  if measurement == 0
    loop do 
      puts "Please enter a number."
      measurement = gets.chomp
      break if measurement != 0 
    end
  end 
  return measurement
end

length = request_measurement("length")
width = request_measurement("width")

area_in_meters = length * width
area_in_feet = area_in_meters * 10.7639

puts "The room is #{area_in_meters} square meters (#{area_in_feet} square feet)"