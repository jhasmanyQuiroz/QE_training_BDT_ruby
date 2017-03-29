=begin
1. Create a class with two methods
method 1:
No arguments defined
Should ask to the user the number of elements in the array
According the value inserted ask for each value of the array and push it in a new array
Return the array
method 2
Should receive 1 argument (the array returned in method 1)
should print the array

2. Instance the class and call to each method in order to interact with them. Consider that method one shodul return the value that need to be used in second method.
=end

class New_class
	def create_array
		new_array = []
		puts "Enter number of elements for the array"
		size = gets.chomp.to_i
		(0..size-1).each do |i|
			puts "enter element"
			element = gets.chomp
			new_array.push(element)
		end

		return new_array
	end
	def print_array(array)
		puts "The elements of arrays are #{array.inspect}"
	end
end

p = New_class.new
array_created = p.create_array
p.print_array(array_created)

