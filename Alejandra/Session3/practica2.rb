class Father
	@@money = 100
	def self.money
		@@money
	end 
end 
puts Father.money
class Child1 < Father
	@@money = @@money - 10 
end
puts Child1.money
class Child2 < Father
	@@money = @@money - 10
end
puts Child2.money
class Child3 < Father
	@@money = @@money - 10 
end
puts Child3.money
puts Father.money

