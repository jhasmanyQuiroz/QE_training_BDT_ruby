=begin 
Create 1 method that is going to return an array
Create 1 method that is going to print the first element of an array received as argument
Create 1 method that is going to print the last element of an array received as argument
Create 1 method that is going to receive two different arrays , and will print the common elements between both arrays
=end

def create_numeric_array size
# return an array with number from 1-10
 array = [] 
 size.times do
   array.push(rand(1..10))
 end
 return array
end

def first_element array
 puts "first element: #{array.first}"
end

def last_element array
 puts "last element: #{array.last}"
end

def common_elements array1, array2
 puts "common elements on arrays"
 p array1&array2
end

puts "number of elements on first array:"
size = gets.chomp.to_i
array1=create_numeric_array(size)
puts "first array:"
p array1
first_element(array1)
last_element(array1)
puts "number of elements on second array:"
size = gets.chomp.to_i
array2=create_numeric_array(size)
puts "second array:"
p array2
common_elements(array1, array2)

