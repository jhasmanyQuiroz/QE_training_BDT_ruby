# puts "Whats your name?"
# var_name = gets.chomp
# puts "Hi #{var_name}, who are you?"

# puts "Enter a number"
# number = gets.chomp.to_i

# bigger = number * 100
# puts "bigger = #{bigger}" 

## Practice Variables
$example_global = 6

module ModTest
    puts "Inside module"
    puts $example_global
end

def method_test
    puts "Method"
    puts $example_global
end

class ClassTest
    puts "ClassTest"
    puts $example_global
end

method_test
puts "inside toplevel"
puts $example_global
puts global_variables.include?:$example_global
