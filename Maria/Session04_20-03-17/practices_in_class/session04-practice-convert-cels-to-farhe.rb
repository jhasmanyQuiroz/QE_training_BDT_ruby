def convert_celious_to_fahrenheit(celious)
	fahrenheit = (((9 * celious.to_int) /5) + 32)
	
end

def convert_fahrenheit_to_celcious(fahrenheit)
	(5 * (fahrenheit.to_f - 32)) /9
	
end

puts convert_celious_to_fahrenheit(180)
puts convert_fahrenheit_to_celcious 356