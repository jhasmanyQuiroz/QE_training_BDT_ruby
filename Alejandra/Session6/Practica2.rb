class Class1
	def method1
		array = Array.new
		puts "Size of array: "
		size =  gets.chomp.to_i
		begin 
			puts "Get a parameter: "
			var = gets.chomp
			array.push(var)
		end while array.length < size
		array
	end

	def method2 array
		p array
	end
end

class1 = Class1.new
class1.method2 (class1.method1)


