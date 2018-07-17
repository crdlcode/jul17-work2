def min_to_sec(m)
  return m * 60
end

def calc_speed(dist, time)
  return dist / time
end

def record(dist, min)
  secs = min_to_sec(min)
  speed = calc_speed(dist, secs)
  return secs, speed
end

#compare records
def compare_records(p1, p2, p3)
  if p3[1] > p2[1] && p3[1] > p1[1]
    return "Person 3 was the fastest at #{p3[1]} m/s."
  elsif p2[1] > p3[1] && p2[1] > p1[1]
    return "Person 2 was the fastest at #{p3[1]} m/s."
  elsif p1[1] > p3[1] && p1[1] > p2[1]
    return "Person 1 was the fastest at #{p1[1]} m/s"
  elsif p1[1] == p2[1] && p2[1] == p3[1]
    return "Everyone tied at #{p1[1]} m/s"
  else
    return "Well done everyone!"
  end
end

# get info
puts "How far did person 1 run (in metres)?"
distance1 = gets.to_f
puts "How long (in minutes) did person 1 run take to run #{distance1} metres?"
mins1 = gets.to_f

puts "How far did person 2 run (in metres)?"
distance2 = gets.to_f
puts "How long (in minutes) did person 2 take to run #{distance2} metres?"
mins2 = gets.to_f

puts "How far did person 3 run (in metres)?"
distance3 = gets.to_f
puts "How long (in minutes) did person 3 take to run #{distance3} metres?"
mins3 = gets.to_f

# do calculations
person1 = record(distance1, mins1)
person2 = record(distance2, mins2)
person3 = record(distance3, mins3)

# show results
puts compare_records(person1, person2, person3)