=begin 
Practice 

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
class WorkingArray
 def create_arrays 
  array_num = []
  array_alph = []
  array_alphanumeric = []
  puts "number of elements on numeric array:" 
  size = gets.chomp.to_i
  (1..size).each do |n|
    puts "Please insert the #{n}th element to the array:" 
    element = gets.chomp.to_i
    array_num.push(element)
  end
  puts "number of elements on alphabetical array:" 
  size = gets.chomp.to_i
  (1..size).each do |n|
    puts "Please insert the #{n}th element to the array:" 
    element = gets.chomp
    array_alph.push(element)
  end
  puts "number of elements on alphanumeric array:" 
  size = gets.chomp.to_i
  (1..size).each do |n|
    puts "Please insert the #{n}th element to the array:" 
    element = gets.chomp
    array_alphanumeric.push(element)
  end
  return array_num, array_alph, array_alphanumeric
 end

def common_first_and_last array1, array2
 puts "common elements on arrays"
 p array1&array2
 puts "first element first array: #{array1.first}"
 puts "first element second array: #{array2.first}"
 puts "last element first array: #{array1.last}"
 puts "last element second array: #{array2.last}"
end 
 
 def join_and_extract array1, array2
 array = []
 array.push(array1.shift)
 array.push(array2.pop)
 puts "the result after join both arrays after extraction is:"
 p array+array2
 return array
end 
 
 def print array
  puts "the array is:"
  p array
 end
end


arrays_sample = WorkingArray.new
array1, array2, array3 =  arrays_sample.create_arrays
puts "given these arrays:"
p array2
p array3
arrays_sample.common_first_and_last(array2, array3)
arrays_sample.print(arrays_sample.join_and_extract(array2, array3))

