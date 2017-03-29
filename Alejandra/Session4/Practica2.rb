def celsius_to_fahrenheit celsius
	((9 * celsius) / 5) + 32
end
def fahrenheit_to_celsius fahrenheit
	(5 * (fahrenheit - 32)) / 9
end
puts "Get celsius: "
celsius =  gets.chomp.to_f
puts "#{celsius} [celsius] to #{celsius_to_fahrenheit celsius} [fahrenheits]"
puts "Get fahrenheits: "
fahrenheit = gets.chomp.to_f
puts "#{fahrenheit} [fahrenheits] to #{fahrenheit_to_celsius fahrenheit} [celsius]"