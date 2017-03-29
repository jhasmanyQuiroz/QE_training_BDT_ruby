class Father
	@@money = 100
	def get_money
		p @@money
	end
end

class Child1 < Father
	def take_money(amount)
		puts @@money -= amount
	end
end

class Child2 < Father
	def take_money(amount)
		puts @@money -= amount
	end
end

class Child3 < Father
	def take_money(amount)
		puts @@money -= amount
	end
end

father = Father.new
child1 = Child1.new.take_money 50
child2 = Child1.new.take_money 30
child3 = Child1.new.take_money 5
father.get_money

