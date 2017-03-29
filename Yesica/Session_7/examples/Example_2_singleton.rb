=begin
Ruby Singletons: Example 2 - Slide 4
Yesica Acha	
=end

require 'singleton'

class Base
	
	include Singleton
	
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
	
	b1 = Base.instance
	p b1.any # Output => 10

	b2 = Base.instance
	p b2.some # Output => 10

	# Comparing b1 and b2
	print "Are b1 and b2 the same object? => "
	puts b1.equal?b2 # Output => true