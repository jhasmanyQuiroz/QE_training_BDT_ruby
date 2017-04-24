=begin
To look at contents of an object use the "inspect" method. 
Even more convenient is to use "p" as a shorthand for 
"puts obj.inspect".
=end


my_array = [1,2,5,7,11]
puts my_array 
puts my_array.inspect
p my_array 

puts("intersection operator &")
puts [1,2,3] & [3,4,5] 

puts("addition operator +")
puts [1,2,3]+ [3,4,5]  

puts("substation operator – ")
#removes items from the first array that appear in the second
puts [1,2,3] - [3,4,5] 
