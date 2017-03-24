=begin
1. Considered your previous script of convert seconds in minutes and seconds in
   hours :
   1. Ask from prompt the value of the seconds
   2. Perform the calculation of minutes and hours into one function, return
      both values
   3. Print the values of the variables.
=end

ConstMin=60.0
ConstHour=60.0
ConstDay=24.0

def convertSeconds seconds
  minutes = seconds / ConstMin
  hours = minutes / ConstHour
  days = hours / ConstDay
  return minutes,hours,days
end

print "Insert seconds: "
seconds = gets.to_f

minutes,hours,days = convertSeconds seconds

puts "seconds in minutes:"
puts "#{seconds} second(s) = #{minutes} minute(s)"
puts "seconds in hours:"
puts "#{seconds} second(s) = #{hours} hour(s)"
puts "seconds in days:"
puts "#{seconds} second(s) = #{days} day(s)"
