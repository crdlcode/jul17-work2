def check_length(text)
  text = text.to_s
  if text.length < 8
    return false
  else
    return true
  end
end

puts check_length("hi")
puts check_length("horizontal")