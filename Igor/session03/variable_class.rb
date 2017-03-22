=begin 
Create a class named father
 father should have some amount of money. 
Add 3 different child classes that are going to take some of the money.
Print the amount that each child is taking
Print the amount of money that Father have at the end
=end


class Father
  def initialize total_money
      @@father_money = total_money
  end
  def print_current_amount_money
      puts "father at this point has: #{@@father_money}"
  end
end


class ChildA < Father
  def initialize
      @money = 0
  end
  def take_money_from_father
      puts "Insert the amount of money to take by ChildA:"
      amount = gets.chomp.to_i
      if @@father_money > amount
          @@father_money= @@father_money - amount
	  @money = @money + amount
      else
          puts "father does not have enough money"
      end
  end
  def print_current_amount_money
      puts "ChildA has at this point: #{@money}"
  end  
end

class ChildB < Father
  def initialize
      @money = 0
  end
  def take_money_from_father
      puts "Insert the amount of money to take by ChildB:"
      amount = gets.chomp.to_i
      if @@father_money > amount
          @@father_money= @@father_money - amount
	  @money = @money + amount
      else
          puts "father does not have enough money"
      end
  end
  def print_current_amount_money
      puts "ChildB has at this point: #{@money}"
  end  
end

class ChildC < Father
  def initialize
      @money = 0
  end
  def take_money_from_father
      puts "Insert the amount of money to took for ChildC:"
      amount = gets.chomp.to_i
      if @@father_money > amount
          @@father_money= @@father_money - amount
	  @money = @money + amount
      else
          puts "father does not have enough money"
      end
  end
  def print_current_amount_money
      puts "ChildC has at this point: #{@money}"
  end  
end

puts "Insert the amount of money for father:"
amount = gets.chomp.to_i
father = Father.new(amount)
father.print_current_amount_money
child_a = ChildA.new
child_b = ChildB.new
child_c = ChildC.new
child_a.take_money_from_father
child_b.take_money_from_father
child_c.take_money_from_father
child_a.take_money_from_father # Child_a will take money from father twice
child_a.print_current_amount_money
child_b.print_current_amount_money
child_c.print_current_amount_money
father.print_current_amount_money
