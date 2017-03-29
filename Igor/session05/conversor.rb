=begin 
Considered your previous script of convert seconds in minutes and seconds in hours :
Ask from prompt the value of the seconds
Perform the calculation of minutes and hours into one function, return both values
=end

def time_conversor time
  seconds_in_minute = 60.0
  minutes_in_hour = 60.0
  minutes = time/seconds_in_minute
  hours = minutes/minutes_in_hour
  return minutes, hours
end

puts "Insert a time in seconds"
time = gets.chomp.to_i
minutes, hours = time_conversor(time)
puts "Given a time of #{time} second"
puts "It is equivalent to #{minutes} minutes"
puts "It is equivalent to #{hours} hours"
