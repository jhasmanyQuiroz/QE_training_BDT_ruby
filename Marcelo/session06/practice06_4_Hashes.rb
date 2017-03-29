=begin
Ruby Hashes
=end

class MyHashes
	attr_reader :my_hash

	def initialize
		@my_hash = Hash.new
	end
	def create_the_hash
		puts "Please enter the number of elements in the hash:"
		size = gets.to_i
		counter = 0

		while counter < size do
			puts "Key:"
			key = gets.chomp
			puts "Value:"
			value = gets.chomp
			@my_hash.store key, value
			counter += 1
		end
		@my_hash
	end
	def print_hash_keys from_hash
		p from_hash.keys
	end
	def print_hash_values from_hash
		p from_hash.values
	end
	def print_hash from_hash
		p from_hash
	end
	def verify_existing_key from_hash
		puts "Type a key to verify if exists in the hash:"
		new_key = gets.chomp
		if from_hash.has_key?(new_key)
			puts "The key '#{new_key}' exists in the hash."
		else
			puts "The key '#{new_key}' does not exist in the hash."
		end
	end	
	def verify_existing_value from_hash
		puts "Type a value to verify if exists in the hash:"
		new_value = gets.chomp
		if from_hash.has_value?(new_value)
			puts "The value '#{new_value}' exists in the hash."
		else
			puts "The value '#{new_value}' does not exist in the hash."
		end
	end
end

hash_class = MyHashes.new
new_hash = hash_class.create_the_hash
hash_class.print_hash_keys new_hash
hash_class.print_hash_values new_hash
hash_class.print_hash new_hash
hash_class.verify_existing_key new_hash
hash_class.verify_existing_value new_hash

