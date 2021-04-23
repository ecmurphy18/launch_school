flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# amend this array so that all the names are shortened to the first three characters

puts flintstones.map { |item|
  item[0,3]
}
