#1. Ask from prompt the value of the seconds
	#1. Perform the calculation of minutes and hours into one function, return both values
	#2. Print the values of the variables

def convert_seconds(seconds)
	minutes = seconds / 60
	hours = minutes / 60
	return minutes, hours
end

puts "Enter value for seconds"
seconds = gets.chomp.to_f
minutes, hours = convert_seconds(seconds)

puts "#{seconds} sec is equal to #{minutes} min and #{hours} hr"