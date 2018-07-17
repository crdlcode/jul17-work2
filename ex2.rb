def negative(num)
  if num < 0
    return true
  elsif num > 0
    return false
  else
    return nil
  end
end

puts negative(4)
puts negative(-2)