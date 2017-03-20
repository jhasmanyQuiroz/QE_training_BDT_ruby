=begin
1. Write 1 Methods that transform Celsius in Fahrenheit
	 Fahrenheit = (((9* Celsius ) /5) + 32)
   a) This method should receive a Celsius value
   b) Pickup any way of the return displayed.

2. Write 1 Method that transform Fahrenheit in Celsius
	 Celsius = (5*(Fahrenheit - 32))/9
   a) This method should receive a Celsius value
   b) Pickup any other way of the return displayed
Tips : use the correct format of number (int? float?)
=end

def celciusToFahrenheit(celcius)
  fahrenheit = (((9 * celcius.to_f ) /5) + 32)
  return fahrenheit
end

def fahrenheitToCelcius(fahrenheit)
  (5*(fahrenheit.to_f - 32))/9
end


puts "celcius: 15.5 to fahrenheit: #{celciusToFahrenheit(15.5)}"
puts "fahrenheit: 59.9 to celcius: #{fahrenheitToCelcius(59.9)}"
