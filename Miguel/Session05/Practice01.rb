=begin
1. Write 1 method that prints a passenger name ,a destination city and the price
    of ticket in dollars.
 - The name should be received from the user
 - If no destination is defined the value by default should be CBBA.
 - The price of the ticket should be received by user, and the transformation
   to dollars should be returned from the method. It should be  float (E.g 150.25)
Perform the calculation using variables, to return the value don’t use return word
When you call the method, don’t use parenthesis
After call the method don’t forget to print the value returned.
=end

print "Enter name: "
name = gets.chomp
print "Enter ticket"
ticket = gets.chomp.to_f

def dollarToBs dollar
  dollar * 6.97
end

def printsPassenger(name,ticket,destination='CBBA')
  puts "Name: #{name}"
  puts "Destination: #{destination}"
  puts "ticket $#{ticket}"
  dollarToBs ticket
end

puts "#{printsPassenger name,ticket} Bs."
