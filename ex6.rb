def convert_to_celsius(t)
  celsius = (t - 32) * 5/9
end

print "Enter a temperature in Fahrenheit: "
temperature = gets.chomp.to_i
celsius = convert_to_celsius(temperature)
puts "It is #{celsius} degrees Celsius."