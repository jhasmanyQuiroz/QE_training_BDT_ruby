class Father
	@@money = 100
	def self.money
		@@money
	end 
end 
class Child1 < Father
	@@money = @@money - 10 
end

class Child2 < Father
	@@money = @@money - 10
end

class Child3 < Father
	@@money = @@money - 10 
end

puts Father.money
puts Child1.money
puts Child2.money
puts Child3.money
