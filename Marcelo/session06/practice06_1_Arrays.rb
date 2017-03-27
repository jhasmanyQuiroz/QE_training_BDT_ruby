=begin
Ruby Arrays
=end

def return_array
	array = [1, "dos", 'three']
end

puts "Returns elements of an array: #{return_array.inspect}"

def get_first_element given_array
	given_array.shift
end

puts "First element of array: #{get_first_element return_array}"

def get_last_element given_array
	given_array.pop
end

puts "Last element of array: #{get_last_element return_array}"

def return_common_elements array_one, array_two
	return array_one & array_two
end

first_array = ["test", 4, "course", "car", 55, "common"]
second_array = [4, 8, "college", "salon", "common"]

puts "Common elements from arrays: #{return_common_elements first_array, second_array}"
