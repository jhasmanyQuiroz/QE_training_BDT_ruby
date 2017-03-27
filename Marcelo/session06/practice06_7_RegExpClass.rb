=begin
Ruby Regular Expressions
=end

class Practice
	attr_reader :my_hash

	def initialize
		@my_hash = Hash.new
	end
	def create_the_hash
		puts "Please enter the number of elements in the hash:"
		size = gets.chomp.to_i
		counter = 0

		while counter < size do
			key = ask_user_id
			value = ask_username
			@my_hash.store key, value
			counter += 1
		end
		@my_hash
	end
	def amount_user_ids_match
		the_number = ask_number
		new_array = @my_hash.select {|key| key.include? the_number}.map {|key, value| key}
		p new_array
	end
	def amount_user_names_match
		the_char = ask_char
		new_array = @my_hash.select {|value| value.include? the_char}.map {|key, value| value}
		p new_array
	end
	def ask_user_id
		puts "Please enter a valid user id (only numbers between 1 to 100):"
		user_id = gets.chomp.to_s
		case user_id
		when /^(100|[1-9][0-9]?)$/; return user_id
		else; 
			ask_user_id
		end
	end
	def ask_username
		puts "Please enter a valid user name (lower case, no more than 8 digits):"
		username = gets.chomp.to_s
		case username
		when /^[a-z]{1,8}$/; username
		else; 
			ask_username
		end
	end
	def ask_number
		puts "Please enter just a number:"
		number = gets.chomp.to_s
		case number
		when /^[0-9]{1,1}$/; number
		else; 
			ask_number
		end
	end
	def ask_char
		puts "Please enter just a character:"
		the_character = gets.chomp.to_s
		case the_character
		when /^[a-z]{1,1}$/; the_character
		else; 
			ask_char
		end
	end

end
my_class = Practice.new
my_class.create_the_hash
# my_class.amount_user_ids_match
my_class.amount_user_names_match