class MyCar
	attr_accessor :color
	def initialize(year, color, model)
		@year = year.to_i
		@color = color
		@model = model
		@current_sped = 0
	end
	def year
		@year
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

myCar = MyCar.new(2017, "green", "toyota")
myCar.speed_up(100)
myCar.brake
myCar.car_off

puts "The color of my car is #{myCar.color}"
myCar.color = "blue"
puts "Now I changed the color of my car to #{myCar.color}"
puts "The year of my car is #{myCar.year}"