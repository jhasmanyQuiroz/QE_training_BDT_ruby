=begin
4. Create a script with some variables that convert seconds in minutes, seconds
in hours and second in days.
* Do not just type in the measurements. Please work out the arithmetic in Ruby.
* Create variable to assign the values
* Use the variable name to print the result.
=end

ConstMin = 60.0
ConstHour = 60.0
ConstDay = 24.0

print "Insert seconds: "
seconds = gets.to_i

puts "seconds in minutes:"
minutes = seconds / ConstMin
puts "#{seconds} second(s) = #{minutes} minute(s)"

puts "seconds in hours:"
hours = minutes / ConstHour
puts "#{seconds} second(s) = #{hours} hour(s)"

puts "seconds in days:"
days = hours / ConstDay
puts "#{seconds} second(s) = #{days} day(s)"
