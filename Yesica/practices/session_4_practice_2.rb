class Person

	attr_writer :name
	attr_accessor :name2
	attr_reader :greet, :greet2, :greet3

	def grettings
		@greet = "Hi #{@name}!"
		@greet2 = "How are u #{@name}?"
		@greet3 = "Have a nice day #{@name}!"
    end
end

person = Person.new()
person.name = "Leo"
person.name2 = "Lucas"
person.grettings
puts person.greet
puts person.greet2
puts person.greet3
puts "Good afternoon, #{person.name2} :)"