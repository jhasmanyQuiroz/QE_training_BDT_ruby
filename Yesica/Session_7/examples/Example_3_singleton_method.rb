=begin
Ruby Singleton method: Example 3 - Slide 4
Yesica Acha	
=end

class Base

	def initialize
		@value = 0
	end

	def any
		@value = 10
	end

	def some
		@value
	end
end
	
def singletn_example
	@singletn_example ||= Base.new
end

p singletn_example.any # Output => 10
p singletn_example.object_id # Output => 21075940

p singletn_example.some # Output => 10
p singletn_example.object_id # Output => 21075940

# New instance of Base class
p Base.new.object_id # Output => 21075720
p Base.new.some # Output => 0

# Comparing the objects
a = singletn_example
b = singletn_example
c = Base.new

puts "Are a and b the same object? => #{a.equal?b}"
puts "Are a and c the same object? => #{a.equal?c}"
