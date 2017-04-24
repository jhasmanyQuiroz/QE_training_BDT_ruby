=begin 
Write 1 Methods that transform Celsius in Fahrenheit
	 Fahrenheit = (((9* Celsius ) /5) + 32)
This method should receive a Celsius value
Pickup any way of the return displayed.	

2. Write 1 Method that transform Fahrenheit in Celsius 
	 Celsius = (5*(Fahrenheit - 32))/9
This method should receive a Celsius value
Pickup any other way of the return displayed
Tips : use the correct format of number (int? float?)

=end

def celsius_to_fahrenheit celsius_value
    (((9* celsius_value ) /5) + 32)
end

def fahrenheit_to_celsius fahrenheit_value
    celsius = (5*(fahrenheit_value - 32))/9
    return celsius
end

puts "We will convert some temperatures from Celsius in Fahrenheit and from Fahrenheit in Celsius"
puts "Please Insert a temperature in Celsius:"
celsius = gets.chomp.to_f
puts "the temperature of #{celsius} Celsius degrees is equivalent to: #{celsius_to_fahrenheit(celsius)} Fahrenheit degrees"

puts "Please Insert a temperature in Fahrenheit:"
fahrenheit = gets.chomp.to_f
puts "the temperature of #{fahrenheit} Fahrenheit degrees is equivalent to: #{fahrenheit_to_celsius(fahrenheit)} Celsius degrees"