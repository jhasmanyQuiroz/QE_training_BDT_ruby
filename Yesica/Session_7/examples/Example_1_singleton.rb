=begin
Ruby Singletons: Example 1 - Slide 3
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
	
	b1 = Base.new

# .new does not work on singletons
# private method 'new' called for Base:Class (NoMethodError)