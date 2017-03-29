=begin
Create a ruby class with 1 method :
  * Insert user name and Age ,ask by prompt.
Create another ruby class with 1 method to :
  * Calculate and print the age in minutes, this “age” is going to receive as
    a parameters of the class

1. Instance the class to get the values of the first method and assign this
   value to a variable.
2. This variable needs to be send to the instance of the second class as a
   parameter to perform the calculation.
=end

class UserData
  def self.askUserAndAge
    print "Enter user name: "
    userName = gets.chomp
    print "Enter age: "
    age = gets.chomp.to_i
    return userName,age
  end
end

class Age
  def initialize(age)
    @age = age
  end

  def CalculateAndPrintAgeInMinutes
    puts "age #{@age} in minutes is: #{(((@age*365)*24)*60)}"
  end
end

age =  UserData.askUserAndAge
Age.new(age[1]).CalculateAndPrintAgeInMinutes
