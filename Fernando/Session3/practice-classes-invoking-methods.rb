class Calculate
    def initialize radius
        @radius = radius
    end    

	def print_area
		puts @radius * 2 * Math::PI
	end

	def print_perimeter
		puts @radius * @radius * Math::PI
	end

end


puts "Give me a number"
number = gets.chomp.to_i
puts "*********************************"
puts "The area for #{number} is: #{Calculate.new(number).print_area}"
puts "*********************************"
puts "The perimeter for #{number} is #{Calculate.new(number).print_perimeter}"


print "Printing local variables= "
print local_variables