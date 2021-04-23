munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# add age group information to the hash above

# Note: a kid is in the age range 0 - 17, an adult is in the range 18 - 64 and a senior is aged 65+.

new_map = {}

munsters.values.each do |item|
  if item["age"] < 18
    item["age_group"] = "kid"
  elsif item["age"] <65
    item["age_group"] = "adult"
  else
    item["age_group"] = "senior"
  end
end

puts munsters
