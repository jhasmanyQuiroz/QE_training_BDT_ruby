$example_of_global = 6

module ModuleTest
	puts "Inside module"
	puts $example_of_global
end

def method_test
	puts "Inside method"
	puts $example_of_global
end

class Test_Class
	puts "Inside class"
	puts $example_of_global
end

method_test
puts "Inside toplevel"
puts $example_of_global
puts "Is global variable?"
puts global_variables.include?:$example_of_global
