# greeting a user

# ask for a user's name
# greet the user
# if the user includes a bang after their name, yell back to the user

puts "What is your name?"
name = gets.chomp

if name.include?("!")
  puts "HELLO #{name.delete("!").upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
