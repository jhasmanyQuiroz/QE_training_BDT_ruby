=begin
  Uso the variables in a class
=end
class MyCar
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
end

car = MyCar.new(1960, "blue", "Mustang")
car.brake
car.speed_up 10
car.speed_up 5
car.shut
