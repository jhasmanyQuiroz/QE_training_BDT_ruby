def celsius_to_fahrenheit(celsius)
	fahrenheit = (((9*celsius) / 5) + 32)

	return fahrenheit
end

def fahrenheit_to_celsius(fahrenheit)
	(5 * (fahrenheit - 32)) / 9
end

puts "Give me a celsius: "
celsius = gets.chomp.to_f
puts "fahrenheit for #{celsius} is :"
puts celsius_to_fahrenheit celsius

puts "Give me a fahrenheit: "
fahrenheit = gets.chomp.to_f
puts "celsius for #{fahrenheit} is :"
puts fahrenheit_to_celsius fahrenheit