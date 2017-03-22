=begin 
4. Create a script with some variables that convert seconds in minutes, seconds in hours and second in days
Do not just type in the measurements. Please work out the arithmetic in Ruby.
Create variable to assign the values
Use the variable name to print the result
=end


seconds_in_minute = 60
minutes_in_hour = 60
hours_in_day = 24

time = 300 #this should be updated to use an input from the user

puts "Given a time of #{time} second"
puts "It is equivalent to #{(time/seconds_in_minute).to_f} minutes"
puts "It is equivalent to #{time/seconds_in_minute/minutes_in_hour.to_f} hours"
puts "It is equivalent to #{time/seconds_in_minute/minutes_in_hour/hours_in_day.to_f} days"

time2 = 60500
hours = time2.to_f/seconds_in_minute/minutes_in_hour
days = hours/hours_in_day

puts "Given a time of #{time2} second"
puts "It is equivalent to #{time2/seconds_in_minute.to_f} minutes"
puts "It is equivalent to #{hours} hours"
puts "It is equivalent to #{days} days"
