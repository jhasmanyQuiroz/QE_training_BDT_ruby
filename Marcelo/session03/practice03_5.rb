=begin
Create a ruby class with 1 method :
	Insert user name and Age ,ask by prompt.
Create another ruby class with 1 method to :
Calculate and print the age in minutes, this “age” is going to receive as a parameters of the class

Instance the class to get the values of the first method and assign this value to a variable.
This variable needs to be send to the instance of the second class as a parameter to perform the calculation.
=end

class Person
	def initialize
		print "Enter your name: "
		@name = gets.chomp.to_s
		print "Enter your age: "
		@age = gets.chomp.to_i
	end
	def age_in_minutes
		puts "#{@name} your age in minutes is: #{@age * 365 * 24 * 60} minutes"
	end
end

Person.new.age_in_minutes