def min_to_sec(m)
  return m * 60
end

def calc_speed(dist, time)
  return dist / time
end

# previously, return 2 values and i think that's bad practice and then remembered about calling other methods inside of a method...
def record(dist, min)
  speed = calc_speed(dist, min_to_sec(min))
  return speed
end

#compare records
def compare_records(speed1, speed2, speed3)
  if speed3 > speed2 && speed3 > speed1
    return "Person 3 was the fastest at #{speed3} m/s"
  elsif speed2 > speed3 && speed2 > speed1
    return "Person 2 was the fastest at #{speed2} m/s"
  elsif speed1 > speed3 && speed1 > speed2
    return "Person 1 was the fastest at #{speed1} m/s"
  elsif speed1 == speed2 && speed2 == speed3
    return "Everyone tied at #{speed1} m/s"
  else
    return "Well done everyone!"
  end
end

# get info
def get_info(person)
  puts "How far did person #{person} run (in metres)?"
  distance = gets.to_f
  puts "How long (in minutes) did person #{person} run take to run #{distance} metres?"
  time = gets.to_f
  speed = record(distance, time) #calculate their speed
end

# call the get_info method to collect data
person1 = get_info(1)
person2 = get_info(2)
person3 = get_info(3)

# show results
puts compare_records(person1, person2, person3)