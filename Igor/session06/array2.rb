=begin 
Create a class with two methods
method 1:
No arguments defined
Should ask to the user the number of elements in the array
According the value inserted ask for each value of the array and push it in a new array
Return the array
method 2
Should receive 1 argument (the array returned in method 1)
should print the array

2. Instance the class and call to each method in order to interact with them.
 Consider that method one shodul return the value that need to be used in second method.
=end

class WorkingArray
 def create_new_array 
  array = []
  puts "number of elements on array:" 
  size = gets.chomp.to_i
  (1..size).each do |n|
    puts "Please insert the #{n}th element to the array:" 
    element = gets.chomp
    array.push(element)
  end
  return array
 end

 def print array
  puts "the array is:"
  p array
 end
end


arrays_sample = WorkingArray.new
array1 = arrays_sample.create_new_array
arrays_sample.print(array1)

