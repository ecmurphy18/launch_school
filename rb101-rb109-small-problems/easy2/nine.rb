# What are the results of this code?

name = 'Bob'
# the variable name is assigned to the string 'bob'
save_name = name
# the variable save name is pointing to the same object name is
name.upcase!
# the mutating method 'upcase' is called on name meaning both
# name and save_name are pointing to the string 'BOB'
puts name, save_name
# prints out BOB, BOB
