puts "Give me a number"
int_number = gets.chomp.to_i

big_number = int_number * 100
puts "integer: #{big_number} big number"

puts "Give me other number"
fl_number = gets.chomp.to_f
big_number = fl_number + 45
puts "floating: #{big_number} big number"

