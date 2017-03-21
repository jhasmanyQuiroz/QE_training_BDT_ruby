class Circle
	attr_reader :radio
	attr_writer :pi
	def initialize
		puts "Initialize method"
	end
#	def calculate_area
#		puts "The circle area is #{@radio * 2 * @pi}"
#	end
#	def calculate_perimeter
#		puts "The circle perimeter is #{@radio * @radio * @pi}"
#	end
end


puts "Give me the circle radius: "
radius = gets.chomp.to_i
circle = Circle.new()
circle.radio = radius
circle.pi = Math::PI

puts circle.radio
puts circle.pi
#Circle.new().calculate_area
#Circle.new().calculate_perimeter