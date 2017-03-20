=begin 
Create a ruby class with 1 method :
* insert user name and Age ,ask by prompt.
Create another ruby class with 1 method to :
* Calculate and print the age in minutes, this “age” is going to receive as a parameters of the class
Instance the class to get the values of the first method and assign this value to a variable.
This variable needs to be send to the instance of the second class as a parameter to perform the calculation.
=end

class User
  def pront_user_name_and_age
      puts "Insert a User name:"
      @user_name = gets.chomp
      puts "Insert the age for the user:"
      @age = gets.chomp.to_i
      puts "hello #{@user_name}!!! your age is: #{@age}"
      return @age
  end
end

class Conversor
  def years_to_minutes  year
      minutes_in_hour = 60
      hours_in_day = 24
      days_in_year = 365
      puts "The year of: #{year}"
      puts "Is Equivalent to #{year * days_in_year * hours_in_day * minutes_in_hour} minutes"
  end
end


my_user = User.new
Conversor.new.years_to_minutes(my_user.pront_user_name_and_age)

