class Person
	def save_data_person
		puts "Enter name"
		@name = gets.chomp
		puts "Enter age"
		@age = gets.chomp.to_i
	end
	def get_age
		@age
	end
end

class Person2
	def initialize(age)
		@age = age
	end
	def age_to_minutes
		puts age_in_minutes = @age * 60
	end
end

person = Person.new
person.save_data_person
person2 = Person2.new(person.get_age)
person2.age_to_minutes