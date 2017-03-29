class Person
	attr_writer :name
	attr_reader :greet
	def setGreet
		@greet = "Hi #{@name}"
	end

end


puts "Give me person name: "
person_name = gets.chomp
person = Person.new()
person.name = person_name
puts person.setGreet
