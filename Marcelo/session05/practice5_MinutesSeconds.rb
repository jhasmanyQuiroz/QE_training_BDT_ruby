=begin
Considered your previous script of convert seconds in minutes and seconds in hours
=end

# This value can be any integer, this will be evaluated and be shown in dd hh:mm:ss format i.e. 90119

puts "Please enter seconds:"
value = gets.to_i

secondsInMinute = 60
minutesInHour = 60
hoursInDay = 24
secondsInDay = hoursInDay * minutesInHour * secondsInMinute
secondsInHour = minutesInHour * secondsInMinute

def get_values value, secondsInDay, secondsInHour, secondsInMinute
	return value/secondsInDay, (value%secondsInDay)/secondsInHour, ((value%secondsInDay%secondsInHour)/secondsInMinute), value%secondsInDay%secondsInHour%secondsInMinute
end

days, hours, minutes, seconds = get_values value,secondsInDay, secondsInHour, secondsInMinute

# If the value does not reach a day then it will not be displayed
if (value/secondsInDay > 0) 
	print "#{days}d " 
end
print "#{hours}h:"
print "#{minutes}m:"
puts "#{seconds}s"



# converter 86400