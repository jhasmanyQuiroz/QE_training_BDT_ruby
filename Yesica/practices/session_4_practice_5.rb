def get_temperature_in_fahrenheit(temperature)
	(((9.0 * temperature) / 5) + 32)
end

def get_temperature_in_celsius(temperature)
	celsius = (5.0 * (temperature - 32)) / 9
end

puts get_temperature_in_celsius(23)
puts get_temperature_in_fahrenheit(172)