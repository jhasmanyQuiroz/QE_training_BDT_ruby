class Father
  @@money = 150
  def self.money
    @@money
  end
end

class ChildOne < Father
   @@money = 145
end

class ChildTwo < Father
   @@money = 205
end

class ChildThree < Father
   @@money = 785
end

puts "Money for Child One: #{ChildOne.money}"
puts "Money for Child Two: #{ChildTwo.money}"
puts "Money for Child Three: #{ChildThree.money}"
puts "Money for Father class: #{Father.money}"








