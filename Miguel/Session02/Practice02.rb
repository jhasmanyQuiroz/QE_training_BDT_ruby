=begin
1. Take your previous script and change calculations for variables.
2. Add some line in the middle of your script that is referring to a variable
   that doesn’t exist. Run the file and please explain the error displayed.
3. Create a new script adding at least one case for each one of the arithmetic,
   comparison, assignment and logical operators, print them and also print the
   result obtained.
   * add variables with numbers and strings.
   * Print them as a sentences (like in the previous case)
   * Add some sentence that perform some calculation using variable names.
    	E.g. instead of :
    		 arg3 = arg1 + arg2
               puts #{arg3}
         use directly
    	       puts #{arg1 + arg2}
=end

# 1
print "Hello"
puts "#{1 + 2}"
puts 1 + 2
puts "Is it true that 3 + 2 < 5 - 7?"

name = "Miguel"
puts "Hello #{name}"

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

# 2
# puts noVariable
# A message is displayed where we can see that we are using undefined variable

# 3
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

puts "Assignment operators"
puts "===================="
temp = 1
puts "#{temp} += 2: #{temp += 2}"
puts "#{temp} -= 2: #{temp -= 2}"
puts "#{temp} *= 2: #{temp *= 2}"
puts "#{temp} /= 2: #{temp /= 2}"
puts "#{temp} **= 2: #{temp **= 2}"

puts "Logical operators"
puts "================="
puts "true && true: #{true && true}"
puts "false && false: #{false && false}"
puts "true && false: #{true && false}"
puts "true and true: #{true and true}"
puts "true || true: #{true || true}"
puts "false || false: #{false || false}"
puts "true || false: #{true || false}"
puts "true or true: #{true or true}"
puts "!true: #{!true}"
puts "!false: #{!false}"
puts "not(true): #{not(true)}"
puts "not(false): #{not(false)}"
