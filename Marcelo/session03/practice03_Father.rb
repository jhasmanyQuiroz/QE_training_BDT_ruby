=begin
Create a class named father
 father should have some amount of money. 
Add 3 different child classes that are going to take some of the money.
Print the amount that each child is taking
Print the amount of money that Father have at the end.
=end

class Father
	@@money = 200
	def self.money
		@@money
	end
end

class Child < Father
  def initialize(money_taken)
      @money_taken=money_taken
      @@money -= money_taken
   end

  def money_taken
  	return @money_taken
  end
end

childA = Child.new(20)
puts "ChildA took some money: #{childA.money_taken}"
childB = Child.new(35)
puts "ChildB took some money: #{childB.money_taken}"
childC = Child.new(58)
puts "ChildC took some money: #{childC.money_taken}"

puts "After all children took the money: #{Father.money}"
