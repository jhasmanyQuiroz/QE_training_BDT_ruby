#1. Create 1 method that is going to return an array
#2. Create 1 method that is going to print the first element of an array received as argument
#3. Create 1 method that is going to print the last element of an array received as argument
#4. Create 1 method that is going to receive two different arrays , and will print the common elements between both arrays

def return_array(array)
	puts array.inspect
end
def return_first_element(array)
	puts "The first element is #{array.first}"
end

def return_last_element(array)
	puts "The last element is #{array.last}"
end

def get_comon_elements(array1, array2)
	puts "The common elements between array1 and array2 is #{array1 & array2}"
end


new_array= ["maria", "ruby", 1, 5.0]
new_array2 = [56.8, "jala", "ruby", 567, "maria"]
puts "The array is: "
puts new_array
puts "=============="
puts new_array.inspect
puts "=============="
return_array(new_array)
return_first_element(new_array)
return_last_element(new_array)
get_comon_elements(new_array, new_array2)