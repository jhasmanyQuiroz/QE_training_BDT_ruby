=begin
Create a script with some variables that convert
seconds in minutes, seconds in hours and seconds in days
=end

# This value can be any integer, this will be evaluated and be shown in dd hh:mm:ss format i.e. 86425
value = 86400 + 3600 + 60 + 59

secondsInMinute = 60
minutesInHour = 60
hoursInDay = 24
secondsInDay = hoursInDay * minutesInHour * secondsInMinute
secondsInHour = minutesInHour * secondsInMinute

# If the value does not reach a day then it will not be displayed
if (value/secondsInDay > 0) 
	print "#{value/secondsInDay}d " 
end

print "#{(value%secondsInDay)/secondsInHour}h:"
print "#{((value%secondsInDay%secondsInHour)/secondsInMinute)}m:"
print "#{value%secondsInDay%secondsInHour%secondsInMinute}s"