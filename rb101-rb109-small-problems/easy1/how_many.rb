vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurrences(vs)
  occurrences = {}
  vs.uniq.each do |v|
    occurrences[v] = vs.count(v)
  end

  occurrences.each do |v, count|
    puts "#{v} => #{count}"
  end
end

puts count_occurrences(vehicles)
