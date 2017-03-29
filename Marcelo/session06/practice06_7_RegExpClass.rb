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
		new_array = @my_hash.select {|key| key.start_with? the_number}.map {|key, value| key}
	end
	def amount_user_names_match
		the_char = ask_char
		new_array = @my_hash.select {|key, value| value.start_with? the_char}.map {|key, value| value}
	end
	def print_ranges
		@my_hash.each do |key, value|
			case key
			when /^(25|[1-2][0-5]?)$/; print "#{key} between 1-25 'User belong Group 1'\n"
			when /^(50|[3-4][0-9]|2[6-9])$/; print "#{key} between 26-50 'User belong Group 2'\n"
			when /^(7[0-5]|[6-6][0-9]|5[1-9])$/; print "#{key} between 51-75 'User belong Group 3'\n"
			else ; print "#{key} between 76-100 'User belong Group 4'\n"
			end
		end
	end
	def print_array the_array
		p the_array
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
p my_class.amount_user_ids_match
p array_matches_names = my_class.amount_user_names_match
my_class.print_ranges
my_class.print_array array_matches_names