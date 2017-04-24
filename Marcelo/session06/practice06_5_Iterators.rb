=begin
Ruby Hashes
=end

class MyIterator
	attr_reader :my_hash, :amount

	def initialize
		puts "The amount of people to register:"
		@amount = gets.chomp.to_i
		@my_hash = Hash.new
	end
	def create_the_hash
		counter = 0

		while counter < @amount do
			puts "Name:"
			key = gets.chomp
			puts "ID:"
			value = gets.chomp
			@my_hash.store key, value
			counter += 1
		end
		@my_hash
	end
	def return_new_array from_hash
		from_hash.each {|key, value| puts "#{key.upcase}"}
		from_hash.each_with_index {|element, index| puts "#{index} - #{element[0]}"}
		from_hash.map {|n| n[0].upcase}
	end
	def say_good_bye from_array
		while !from_array.empty? do
			puts "Good bye: #{from_array.pop}"
		end
	end
end

my_iterator = MyIterator.new
new_hash = my_iterator.create_the_hash
new_array = my_iterator.return_new_array new_hash
p new_array
my_iterator.say_good_bye new_array
