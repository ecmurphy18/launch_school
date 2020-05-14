def digit_list(num)
  num.to_s.chars.map(&:to_i)
end

print digit_list(12345)
print digit_list(7)
print digit_list(375290)
print digit_list(444)
