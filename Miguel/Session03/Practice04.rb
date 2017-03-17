=begin
Create a ruby class with two methods :
	One method to calculate and print the area of a circle :
radius * 2 * PI
	One method to calculate and print the perimeter 	of a circle
radius * radius * PI
Instance the class and call to the methods in order to see the result printed,
the radius should be asked by prompt
=end

class Circle

  def initialize radius
  @radius = radius
  end

  def printArea
    puts "area of circle: #{@radius * 2 * Math::PI}"
  end

  def printPerimeter
    puts "perimeter of circle: #{@radius * @radius * Math::PI}"
  end
end


print "Insert a radius: "
radius = gets.chomp.to_i
circle = Circle.new(radius)
circle.printArea
circle.printPerimeter
