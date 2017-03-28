=begin
Ruby Arrays
=end


class NewClass
	# method 1 :
	# No arguments defined
	# Should create an array with only numbers 
	# According the value inserted ask for each value of the array and push it in a new array
	# Should create an alphabetical array
	# Should create a mixed array (numeral an alphabetical )
	# Return the 3 arrays
	def return_thre_arrays
		puts "Please enter the number of elements in the array:"
		size = gets.to_i
		counter = 0
		numeric_array = Array.new
		alphabetical_array = Array.new
		mixed_array = Array.new
		puts "Please enter the elements followed by Enter"

		while counter < size do
			value = gets.chomp
			if value.to_i.to_s
				numeric_array.push(value)
				mixed_array.push(value)
			else
				alphabetical_array.push(value)
				mixed_array.push(value)
			end
			counter += 1
		end
		return numeric_array, alphabetical_array, mixed_array
	end

	# method 2
	# Should receive 2 arguments (2 arrays)
	# should print only the elements in common between the 2 arrays received
	# should print the first element of both arrays
	# should print the last element of both arrays
	def return_common_elements array_one, array_two
		puts array_one & array_two
		puts "First elements of both arrays: #{array_one.first} and #{array_two.first}"
		puts "Last elements of both arrays: #{array_one.last} and #{array_two.last}"
	end

	# Method 3 
	# Should receive 2 arguments (2 arrays)
	# Should print the result of join both arrays but before join  need to extract :
	# -	the first element of the first array
	# -	the last element of the second array
	# Create an array with both elements extracted, return this array

	def join_arrays array_one, array_two
		array_one.shift
		array_two.pop
		array_one & array_two
	end

	# Method 4
	# Should receive 1 arguments(the array from method 3)
	# Should print the array received

	def print_array my_array
		p my_array
	end
end

my_class = NewClass.new
my_class.return_thre_arrays

first_array = ["test", 4, "course", "car", 55, "common"]
second_array = [4, 8, "college", "salon", "common"]

my_class.return_common_elements first_array, second_array

joint_array = my_class.join_arrays first_array, second_array
puts "Join both arrays: #{joint_array}"

my_class.print_array joint_array