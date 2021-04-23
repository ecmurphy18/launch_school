# print all odd numbers from 1 to 99
# make sure it is inclusive
# each number should be on a separate line

odds = (1..99).select do |n|
  n.odd?
end

puts odds
