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
  fahrenheit = (((9 * celcius ) /5) + 32)
  return fahrenheit
end

def fahrenheitToCelcius(fahrenheit)
  (5*(fahrenheit - 32))/9
end

puts 'Convert from celcius to fahrenheit'
print 'Insert celcius: '
celcius = gets.chomp.to_f
puts "celcius: #{celcius} to fahrenheit: #{celciusToFahrenheit(celcius)}"

puts 'Convert from fahrenheit to celcius'
print 'Insert fahrenheit: '
fahrenheit = gets.chomp.to_f
puts "fahrenheit: #{fahrenheit} to celcius: #{fahrenheitToCelcius fahrenheit}"

=begin Test
puts "celcius: 15.5 to fahrenheit: #{celciusToFahrenheit(15.5)}"
puts "fahrenheit: 59.9 to celcius: #{fahrenheitToCelcius(59.9)}"
=end
