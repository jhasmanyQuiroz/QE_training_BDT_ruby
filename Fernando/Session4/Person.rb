class Person
	attr_writer :name
	attr_reader :greet1
	attr_writer :specialMessage

    def greeting
    	@greet1 = "Hi #{@name}" 
    end

    def specialMessage
        "#{@name} have a nice day"
    end
end

person = Person.new()
person.name = "Fernando"
person.greeting
puts person.specialMessage
puts person.greet1


person.name = "javier"
person.greeting
puts person.greet1


