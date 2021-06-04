def before_midnight(str)
  hours, minutes = str.split(':')
  hours.to_i === 24 || hours.to_i === 0 ? hours = 0 : hours = 23 - hours.to_i
  minutes.to_i === 0 ? mins = 0 : mins = 60 - minutes.to_i
  hours > 0 ? mins = (hours*60) + mins : mins
  mins
end

def after_midnight(str)
  hours, minutes = str.split(":")
  hours.to_i.between?(0,23)  ? minutes = (hours.to_i * 60) + minutes.to_i : minutes.to_i
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0
