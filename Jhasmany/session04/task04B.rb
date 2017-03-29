=begin
  Uso the variables in a class with attr_accessor
=end
class MyCar
  attr_accessor :color
  attr_reader :year

  def initialize(year, color, modelOfCar)
    @year = year
    @color = color
    @model = modelOfCar
    @speed = 0
  end

  def speed_up(velocity)
    @speed += velocity
    puts "You are accelerating #{@speed} mph"
  end

  def brake
    if @speed > 0
      @speed -= 1
      puts "You are decelerating #{speed} mph"
    else
      puts "Your car is stationary"
    end

  end

  def shut
    @speed = 0
    puts "You are stopping the car"
  end

  def display
    puts "The car is #{color}, manufactured in #{@year} and the #{@model} model"
  end
end

# Testing the accessor for read and write
car = MyCar.new(1980, "Blue", "Mustang")
car.display
car.color = "Black"
car.display

# Testing the accessor for only read
puts "The year of car is #{car.year}"
# It's not possible change the year because is only read
#car.year = 123
