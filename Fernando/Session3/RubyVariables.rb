
$example_of_global= 600
module ModuleTest        
    puts "Inside of a module"
    puts $example_of_global
end


def method_test
    puts "Inside of a method"
    puts $example_of_global
end


class Some_test
    puts "Inside of a class"
    puts $example_of_global
end 

method_test 
puts "Inside toplevel"
puts $example_of_global
puts global_variables.include?:$example_of_global2

