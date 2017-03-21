class MyCar
	attr_accessor :color
	attr_reader :year
	def initialize year, color, model
		@current_speed = 0
		@year = year
		@color = color
		@model = model
	end 
	def speed_up number
		@current_speed += number
		puts "You accelerate to #{number} mph."
	end
	def brake
		puts "braking car..."
	end
	def shut_car_off
		puts "shutting car off..."
	end
end

puts "Get year: "
year = gets.chomp.to_i
puts "Get color"
color = gets.chomp
puts "Get model"
model = gets.chomp
car = MyCar.new(year, color, model)
car.speed_up 40
car.brake
car.shut_car_off
puts car.year
car.color = "amarillo"
puts car.color