
class ClassName
	def initialize(radio)
		@radio = radio
	end
	def calculate_circle_area
		circleArea = @radio * 2 * Math::PI
		return puts "The area of circle to radio is #{circleArea}"
		
	end
	def calculate_circle_perimeter
		circle_perimeter = @radio * @radio * Math::PI
		puts "The perimeter of circle is #{circle_perimeter}"
	end
end

circle = ClassName.new(5)
circle.calculate_circle_area
circle.calculate_circle_perimeter