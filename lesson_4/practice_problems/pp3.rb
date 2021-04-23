ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# remove people with age 100 and greater

new_ages = ages.select do |key, value|
  value < 100
end

puts new_ages
