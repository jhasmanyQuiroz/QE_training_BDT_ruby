class Example
	def first_method
		puts "My first instance method"
	end
end


object = Example.new.first_method  # instanciate my class

puts object.to_s