=begin



print "Hello"
puts "#{1 + 2}"
puts 1 + 2
puts "Is it true that 3 + 2 < 5 - 7?"

name = "Miguel"
puts "Hello #{name}"
=end
# Arithmetic operators
num1 = 10
num2 = 5
result = num1 + num2
float1 = 10.0
numy = num1;
numx = num1 + 1;

# Arithmetic operators
print result
print " = "
print num1 + num2
puts "\n#{result} = #{num1 + num2}"

puts "Arithmetic operators"
puts "===================="
puts "num1 + num2 = #{num1 + num2}"
puts "num1 - num2 = #{num1 - num2}"
puts "num1 * num2 = #{num1 * num2}"
puts "num1 / num2 = #{num1 / num2}"
puts "num1 % num2 = #{num1 % num2}"
puts "num1 ** num2 = #{num1 ** num2}"

puts "Comparison operators"
puts "===================="
puts "num1 == num2: #{num1 == num2}"
puts "num1 != num2: #{num1 != num2}"
puts "num1 > num2: #{num1 > num2}"
puts "num1 < num2: #{num1 < num2}"
puts "num1 >= num2: #{num1 >= num2}"
puts "num1 <= num2: #{num1 <= num2}"

puts "Comparison operators"
puts "===================="
puts "0<=>0: #{0<=>0}"
puts "0<=>1: #{0<=>1}"
puts "0<=>-1: #{0<=>-1}"

puts "(1...10) === 5 : #{(1...10) === 5}"
puts "(1...10) === 11 : #{(1...10) === 11}"

puts "#{num1}.eql?(#{float1}) : #{num1.eql?(float1)}"
puts "#{num1}.eql?(#{num1}) : #{num1.eql?(num1)}"

puts num1.equal?(num1)
puts num1.equal?(numx)
puts num1.equal?(numy)

puts num1
puts numx
puts numy