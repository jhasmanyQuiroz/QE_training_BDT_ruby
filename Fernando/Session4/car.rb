class Car
  def initialize(year, model, color)
  	@year = year
  	@model = model
  	@color = color
  	@currentSpeed = 0
  end

  def speed_up(speedNumber)
  	@currentSpeed += speedNumber
  	puts "You have acelerated #{speedNumber} mph"
  end

  def break(breakNumber)
    @currentSpeed -= breakNumber
    puts "You slow down #{breakNumber} mph"
  end

  def turn_off_engine()
    @currentSpeed = 0   	
    puts "The engine is turn off, current speed = #{@currentSpeed}"
  end 
end

car = Car.new("2017", "Aston Martin V8 Vantage","black")
car.speed_up(200)
car.break(50)
car.turn_off_engine





