def get_grade(numA, numB, numC)
  score = (numA + numB + numC) / 3
  case score
  when (90..100)
    "A"
  when(80..90)
    "B"
  when(70..80)
    "C"
  when(60..70)
    "D"
  when(0..60)
    "F"
  else
    "Unable to find grade"
  end
end

puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"
