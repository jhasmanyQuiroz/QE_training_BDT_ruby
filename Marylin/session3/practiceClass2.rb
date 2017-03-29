class Circle
	def initialize radious
		puts "Initialize method"
		@radio = radious
		@pi = Math::PI
	end
	def calculate_area
		puts "The circle area is #{@radio * 2 * @pi}"
	end
	def calculate_perimeter
		puts "The circle perimeter is #{@radio * @radio * @pi}"
	end
end


puts "Give me the circle radius: "
radius = gets.chomp.to_i
Circle.new(radius).calculate_area
Circle.new(radius).calculate_perimeter