=begin
 1. Take your previous script and change calculations for variables.
=end

bananas = 25 + 30 / 6;

puts "Bananas:  25 + 30 /6  is equal to #{bananas}"

calculation = 40 + 4 % 2 - 5 / 4 + 6 * ( 6 - 5 )
puts calculation


calcLessthan = 3 + 2 < 5 - 7

puts "Is it true that 3 + 2 < 5 - 7?"
puts calcLessthan


result = 3 + 2
puts "What is 3 + 2? It is #{result} ?. "

result = 5 - 7
puts "What is 5 - 7? It is #{result} ?. "


=begin
 2. Take your previous script and change calculations for variables.
=end


#puts "This variable #{variable} is undefined raises a NamedError"


=begin
 3. Create a new script adding at least one case for each one of the 
    arithmetic, comparison, assignment and logical operators, 
    print them and also print the result obtained.
=end


puts "================ Aritmetic operations ================"

puts "The result of 3 % 5 is #{3+5}" 
puts "The result of #{3 / 5 + 5 - (4*100)}"

puts "================ Comparison operations ================"

puts "3 is greather than or equal to 5? #{3 >= 5}"
puts "#{10 != 45}?"

puts "================ Asigments ================"

iniVal=10
puts "Adding 45 to iniVal: #{iniVal+=45}"

puts "================ Logical operators ================"

a = true
b = false
puts "#{a || b}  - #{a and b} - #{not(a || b)}"





