=begin 
Create a class with :
method to create the hash, the method should ask for the length of the hash
	According the length defined should ask to the user for the key and for the value.
Use a getter to obtain the hash created in the method
Method to print the hash key
Method to print the hash values
Method to print the hash
Method to define is a key inserted by the user, exists on the hash.
Method to define is a value inserted by the user, exists on the hash.
Instance the class and call to the method to create the hash
Using the returned hash,  call to the other methods with this argument.

=end
class WorkingHash
attr_reader :my_hash
 def create_hash 
  @my_hash = {}
  puts "number of elements on hash:" 
  size = gets.chomp.to_i
  (1..size).each do |n|
    puts "Please insert the #{n}th key for the hash:" 
    key = gets.chomp
    puts "Please insert the #{n}th value for the hash:" 
    value = gets.chomp
    @my_hash.store(key, value)
  end
 end

 def print_keys
  puts "hash keys:"
  p @my_hash.keys
 end 

 def print_values
  puts "hash values:"
  p @my_hash.values
 end 

 def print_hash
  p @my_hash
 end

 def verify_key
  puts "Please insert a key to look on the hash:" 
  key = gets.chomp
  puts "the key: #{key} is present in the Hash? #{@my_hash.has_key?(key)}"
 end

 def verify_value
  puts "Please insert a value to look on the hash:" 
  value = gets.chomp
  puts "the value: #{value} is present in the Hash? #{@my_hash.has_value?(value)}"
 end
end

hash_sample = WorkingHash.new
hash_sample.create_hash
puts "the given hash was : #{hash_sample.my_hash}"
hash_sample.print_keys
hash_sample.print_values
hash_sample.print_hash
hash_sample.verify_key
hash_sample.verify_value
hash_sample.verify_key
hash_sample.verify_value