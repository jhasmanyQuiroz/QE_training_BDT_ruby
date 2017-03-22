=begin
  This practice is related to use of class variable.
=end

class Father
  @@fathersMoney = 100

  def money
    @@fathersMoney
  end
end


class Son < Father

  def takeMoney(money)
    @@fathersMoney -= money
  end
end

# Testing the classes
father = Father.new
puts "The Father has #{father.money}$"

# SON A
sonA = Son.new
money = 30
puts "The Son A needs #{money}$"
sonA.takeMoney(money)
puts "Now, the Father has #{father.money}"

# SON B
sonB = Son.new
money = 40
puts "The Son B needs #{money}$"
sonB.takeMoney(money)
puts "Now, the Father has #{father.money}"

# SON C
sonC = Son.new
money = 10
puts "The Son C needs #{money}$"
sonC.takeMoney(money)
puts "Now, the Father has #{father.money}"
