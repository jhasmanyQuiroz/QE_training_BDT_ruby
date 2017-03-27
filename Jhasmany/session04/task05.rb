=begin
  Write 1 method that prints a passenger name ,a destination city and the price
 of ticket in dollars:
   1. The name should be received from the user
   2. If no destination is defined the value by default should be CBBA.
   3. The price of the ticket should be received by user, and the transformation
      to dollars should be returned from the method. It should be float (E.g 150.25)
   4. Perform the calculation using variables, to return the value don’t use return word
   5. When you call the method, don’t use parenthesis
   6. After call the method don’t forget to print the value returned.
=end

def passenger_display(name, price, destination='cbba')
	price = convert_to_bs(price)
	display = "Name: #{name} - Destination: #{destination} - Price: #{price}"
end

def convert_to_bs(price)
  price = price.to_f
	if price != 0
		Float bolivians = price * 6.90
	end
end

puts "Type your name:"
name = gets.chomp
puts "Type the price of ticket:"
price = gets.chomp
puts passenger_display name, price, 'Barcelona'
