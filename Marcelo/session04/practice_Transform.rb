=begin
Ruby Methods 
1. Write 1 Methods that transform Celsius in Fahrenheit
2. Write 1 Method that transform Fahrenheit in Celsius 

=end

def celsius_to_fahrenheit(celsius) 
	fahrenheit = (((9.0 * celsius ) / 5.0) + 32)
end
	
def fahrenheit_to_celsius(fahrenheit) 
	celsius = (5.0 * (fahrenheit - 32))/9.0
end

puts celsius_to_fahrenheit(3)
puts fahrenheit_to_celsius(99.32).to_i