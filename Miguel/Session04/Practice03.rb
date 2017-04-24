=begin
Create a new script using the same class created before but now :
 Add an accessor method to your MyCar class to change and view the color of
 your car. Then add an accessor method that allows you to view, but not modify,
 the year of your car.
=end

class MyCar
  attr_accessor :color
  attr_reader :year

  def initialize(year,color,model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
  end

  def speed_up number
    @current_speed += number
    puts "You accelerate to  #{number} mph."
  end

  def brake
    puts "You brake the car"
  end

  def shutOff
    puts "you shut the car off"
  end
end

year,color,model = 2015,"red","gx45"
puts "year: #{year}"
puts "color: #{color}"
puts "model: #{model}"
puts "Build car..."
car = MyCar.new(year,color,model)
puts "color: #{car.color}"
puts "Change color of the car"
car.color = "yellow"
puts "color: #{car.color}"
puts "year: #{car.year}"
