=begin
Using class variables :
1. Create a class named father
    father should have some amount of money.
2. Add 3 different child classes that are going to take some of the money.
3. Print the amount that each child is taking
4. Print the amount of money that Father have at the end.
=end

class Father
  @@totalMoney = 2000

  def getTotalMoney
    @@totalMoney
  end
end

class Girl < Father
  def takeMoney(money)
    @@totalMoney -= money;
  end
end

class Boy < Father
  def takeMoney(money)
    @@totalMoney -= money;
  end
end

class Baby < Father
  def takeMoney(money)
    @@totalMoney -= money;
  end
end

father = Father.new
print "Start: Total Amount of Father: "
puts father.getTotalMoney

girl = Girl.new
puts "Girl takes 10"
girl.takeMoney(10)
print "Total Amount of Father: "
puts girl.getTotalMoney

boy = Boy.new
puts "Boy takes 20"
boy.takeMoney(20)
print "Total Amount of Father: "
puts boy.getTotalMoney

baby = Baby.new
puts "Baby takes 30"
baby.takeMoney(30)
print "Total Amount of Father: "
puts baby.getTotalMoney

print "End: Total Amount of Father: "
puts father.getTotalMoney
