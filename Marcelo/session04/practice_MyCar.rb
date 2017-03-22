=begin
Ruby variables 
Create one class called MyCar
=end

class MyCar
	attr_reader :year, :model, :break, :shut_off
	attr_accessor :color
	@@current_speed = 0
	def initialize year, color, model
		@year = year
		@color = color
		@model = model
		@break = "You breaked the car 0 mph."
		@shut_off = "You shut the car off."
	end

	def speed_up(number) 
		puts "You accelerated #{number} mph."
		@@current_speed += number 
	end
	
	def current_speed
		"Total millage: " + @@current_speed.to_s + " m"
	end
end

car1 = MyCar.new(1978,"blue","mustang")
puts "Year:\t#{car1.year}"
puts "Color:\t#{car1.color}"
puts "Model:\t#{car1.model}"
car1.speed_up(12)
car1.speed_up(24)
puts car1.break
puts car1.current_speed
car1.color = "green"
# car1.model = "none"
puts "Year:\t#{car1.year}"
puts "Color:\t#{car1.color}"
puts "Model:\t#{car1.model}"
puts car1.shut_off
puts car1.current_speed