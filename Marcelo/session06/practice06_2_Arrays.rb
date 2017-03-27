=begin
Ruby Arrays
=end

class NewClass
	def return_array
		puts "Please enter the number of elements in the array:"
		size = gets.to_i
		counter = 0
		my_array = Array.new
		puts "Please enter the elements followed by Enter"

		while counter < size do
			my_array.push(gets.chomp)
			counter += 1
		end
		my_array
	end
	def print_array built_array
		p built_array
	end
end

test = NewClass.new
the_array = test.return_array
test.print_array the_array