munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

total_count = 0
munsters.each do |name, deets|
  if deets['gender'] == 'male'
    total_count += deets['age']
  end
end

puts "The total ages of the males are: ", total_count
