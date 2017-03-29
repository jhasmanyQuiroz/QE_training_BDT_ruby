class MyCar
	def initialize(year, color, model)
		@year = year.to_i
		@color = color
		@model = model
		@current_sped = 0
	end

	def speed_up(number)
		@current_sped += number
		puts "You accelerate to #{number} mph"
	end

	def brake
		puts "The car has braked"
	end

	def car_off
		puts "The car has off"
	end
end

myCar = MyCar.new(2017, "red", "toyota")

myCar.speed_up(100)
myCar.brake
myCar.car_off
