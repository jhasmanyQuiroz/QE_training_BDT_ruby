class Visitors
	attr_accessor :user
	def initialize
		@user = "Guest"
		@message = "Welcome to the city"
		@visitors = 0
		@visitors_hash = Hash.new
	end
	def add_visitor
		puts "Enter name"
		@user = gets.chomp
		puts "Enter message"
		@message = gets.chomp
		@visitors_hash[@user] = @message
		@visitors+= 1
	end
end

######Singleton

def singleton_visitors
	@singleton_visitors = Visitors.new
end

singleton_visitors.add_visitor
p singleton_visitors.add_visitor