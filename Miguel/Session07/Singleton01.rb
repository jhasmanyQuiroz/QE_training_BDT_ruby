require 'singleton'
class Base
  include Singleton
 	def initialize
         @value= 0
 	end
 	def any
         @value= 10
 	end
 	def some
         @value
	end
end

b1 = Base.instance
puts b1.some
b1.any
puts b1.some
b2 = Base.instance
puts b2.some
b2.any
puts b1.some
# Same object
puts b1.equal?(b2)
