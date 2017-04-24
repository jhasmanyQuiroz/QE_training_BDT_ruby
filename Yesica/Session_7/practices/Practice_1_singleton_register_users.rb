=begin
Ruby Singleton: Practice 1 - Slide 5
Yesica Acha	
=end

class Base

	attr_accessor :user
	attr_reader :hash

	def initialize

		# Initialize values for @user, @message, @visitors and @hash
		@user = "Guest"
		@message = "Welcome to the city"
		@visitors = 0
		@hash = Hash.new
	end

	def add_user(user)
		@user = user
	end

	def add_welcome_message(message)
		@message = message
	end

	def add_value_to_hash
		@visitors += 1
		p "#{@user} is visitor number #{@visitors}"

		@hash[@user] = @message
		
	end
end
	
def singletn_example
	@singletn_example ||= Base.new
end

def register_user

	puts "How many users would you like to register?"
	quantity_of_users = gets.chomp
	quantity_of_users.to_i.times do |users| 

		# Add a user name
		puts "Please enter your user name"
		singletn_example.add_user (gets.chomp)

		# Add a welcome message
		puts "Please enter a welcome message"
		singletn_example.add_welcome_message(gets.chomp)

		# Save user and messages in a hash and increment visitors
		singletn_example.add_value_to_hash
	end

	# Print the hash that contains the users and welcome messages
	p singletn_example.hash

	# Print the last user defined using attr_accessor
	puts "The last user defined is #{singletn_example.user}"
end

register_user