def celsiusToFarenheit(celcius)
	fahrenheit = (((9 * celcius)/5) + 32).to_f
end


def farenheitToCelcius(fahrenheit)
	return celcius = ((9 * (fahrenheit - 32)) / 9).to_f
end


puts celsiusToFarenheit(45.7)
puts farenheitToCelcius(120.89)
