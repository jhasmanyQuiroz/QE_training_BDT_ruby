class Circle

	def initialize radius 
		@radius = radius
		@pi = Math::PI
	end

	def get_area
		area = @radius * 2 * @pi
		puts "The area of the circle is #{area}"
	end

	def get_perimeter
		puts "The perimeter of the circle is #{@radius * @radius * @pi}"
	end
end

puts "Please enter the radius of the circle...."
radio = gets.chomp.to_f
Circle.new(radio).get_area  # instanciate my class
Circle.new(radio).get_perimeter

