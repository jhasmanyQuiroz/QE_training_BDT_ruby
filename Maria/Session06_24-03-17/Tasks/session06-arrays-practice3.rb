=begin
	
1. Create a class with two methods
method 1 :

No arguments defined
Should create an array with only numbers 
According the value inserted ask for each value of the array and push it in a new array
Should create an alphabetical array
Should create a mixed array (numeral an alphabetical )
Return the 3 arrays

method 2
Should receive 2 arguments (2 arrays)
should print only the elements in common between the 2 arrays received
should print the first element of both arrays
should print the last element of both arrays


Method 3 
Should receive 2 arguments (2 arrays)
Should print the result of join both arrays but before join  need to extract :
-	the first element of the first array
-	the last element of the second array
Create an array with both elements extracted, return this array

Method 4
Should receive 1 arguments(the array from method 3)
Should print the array received

2. Instance the class and call to each method in order to interact with them. Please don’t use instanced, class or global variables. 
All actions should be performed calling the class and not inside the class
	
=end


class Array_class
	def create_array
		@numbers_array = []
		@alphabetical_array = []
		@mixed_array = []
		puts "Enter number of elements for the array"
		size = gets.chomp.to_i
		(0..size-1).each do |i|
			puts "enter element"
			element = gets.chomp
		
			if(element.to_i.to_s == element || element.to_f.to_s == element)
				@numbers_array.push(element.to_i.to_f)
				@mixed_array.push(element.to_i.to_f)
			 else 
			 	@alphabetical_array.push(element)
			 	@mixed_array.push(element)
			 end
		end
		return @numbers_array, @alphabetical_array, @mixed_array
	end
	def get_common_elements(array1, array2)
		puts "The common element between arrays are #{array1 & array2}"
		puts "The first element of first array is #{array1.first}"
		puts "The first element of second array is #{array2.first}"
		puts "The last element of first array is #{array1.last}"
		puts "The last element of second array is #{array2.last}"
	end

	def join_arrays(array1, array2)
		new_array = []
		new_array.push(array1.shift)
		new_array.push(array2.pop)
		return new_array
	end

	def print_joined_array(array)
		puts "The joined array is #{array.inspect}"	
	end
end

p = Array_class.new
array1, array2, array3 = p.create_array
p.get_common_elements(array1, array3)
array_joined = p.join_arrays(array1, array2)
p.print_joined_array(array_joined)
