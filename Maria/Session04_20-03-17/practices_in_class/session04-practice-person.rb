class Person
	attr_writer :name
	attr_reader :greet
	attr_reader :message
	def initialize(name)
		@name = name
	end
	def greet_person
		@greet = "Hi #{@name}"
	end
	def message
		@message = "#{@name} have a nice day"
	end
end



person = Person.new("Maria")
puts person.greet_person
puts person.message