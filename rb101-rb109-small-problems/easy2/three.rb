# tip calculator

# prompt for a bill amount
# prompt for a tip rate
# compute the tip
# display both the tip and the total amount of the bill.

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
percentage = gets.chomp.to_f

tip = bill * (percentage/100)
puts "The tip is $#{tip.round(2)}."
puts "The total is $#{bill + tip}"
