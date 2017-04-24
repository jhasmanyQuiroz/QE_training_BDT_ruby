 1) STRINGS

   a) Use String interpolation over string concatenation

	fullName = “#{user.name}  #{user.lastname}”  

   b) Use double quotes 

	# bad

	    City = 'Cochabamba'

	# good

	    City = “Cochabamba”


	c) Don´t use to_s on interpolated objects. It´s invoked on them automatically

	# bad

		message = "This is the #{result.to_s}."

	# good

		message = "This is the #{result}."
	 

 2) Classes and modules

   a) Use UpperCamelCase for clases names and modules

	#bad
	  class carengine

	#good
	  class CarEngine


   b) Avoid prefix name get and set for accessor and mutators 

	 #bad
	  class Person
	    def get_name
	       return first_name
	    end

	    def set_name(name)
	      @first_name = name
	    end
	 end

	 
	 #good
	  class Person
	    def name
	       return first_name
	    end

	    def name(name)
	      @first_name = name
	    end
	 end	  

  c) Define attr_accessor, attr_reader, attr_writer after the class name

	#bad
	class Foo
	  # ok
	  def initialize()
	    
	  end

	  # bad
	  def do_something()
	    
	  end

	  attr_accessor :options
	  attr_reader :name
	end

	#good

	class Foo
	  attr_accessor :options
	  attr_reader :name

	  # ok
	  def initialize

	  end

	  # bad
	  def do_something

	  end

  
  3) Methods
   a)  Use parentheses when there are parameters. Omit the parentheses when the method doesn't accept any parameter

	# bad
	def some_method()
	  # body omitted
	end

	# good
	def some_method
	  # body omitted
	end

	# bad
	def some_method_with_parameters param1, param2
	  # body omitted
	end

	# good
	def some_method_with_parameters(param1, param2)
	  # body omitted
	end


  b) Define optional arguments at the end of the list of arguments. 

	# bad
	def some_method(a = 1, b = 2, c, d)
	  puts "#{a}, #{b}, #{c}, #{d}"
	end


	# good
	def some_method(c, d, a = 1, b = 2)
	  puts "#{a}, #{b}, #{c}, #{d}"
	end

  
  c) Allways use return keyword on methods 

	# bad
	def some_method(some_arr)
	  some_arr.size
	end

	# good
	def some_method(some_arr)
	  return some_arr.size
	end
  



  4) Variables, Constants

    a) Constants: Use Capitalized with underscores 

	#bad
	   EXCHANGEDIRECTORY = "C:/programs"
	   
	#good
	   EXCHANGE_DIRECTORY = "C:/programs"

  
    b) variables: Use lower-camelcase

	#bad
	 customer_Name

	#good
	  customerName

   c) Use module instance variables instead of global variables

	# bad
	$foo_bar = 1

	# good
	module Foo
	  class << self
	    attr_accessor :bar
	  end
	end

	Foo.bar = 1
  
  
   d) Avoid the use of parallel assignment for defining variables. 

	# bad
	a, b, c, d = 'foo', 'bar', 'baz', 'foobar'

	# good
	a = 'foo'
	b = 'bar'
	c = 'baz'
	d = 'foobar'

    e) Use shorthand self assignment operators whenever applicable.

	# bad
	x = x + y
	x = x * y
	x = x**y
	x = x / y

	# good
	x += y
	x *= y
	x **= y
	x /= y

	5) IF/ELSE statement

    a) Avoid multi-line ?: (the ternary operator); use if/unless instead

	 # bad
	some_condition?
	  do_something
	  do_something_else
	 :do_other_thing

	# good
	if some_condition 
	  do_something
	  do_something_else
	else
	  do_other_thing
	end

 
    b) Don't use parentheses around the condition of a control expression.

	 # bad
	if (x > 10)
	  # body omitted
	end

	# good
	if x > 10
	  # body omitted
	end


    c) Always put the condition on the same line as the if/unless in a multi-line conditional. 

	# bad
	if
	  some_condition
	  do_something
	end

	# good
	if some_condition
	  do_something
	end
  
    d) Do not use then for multi-line if/unless. 

	# bad
	if some_condition then
	  # body omitted
	end

	# good
	if some_condition
	  # body omitted
	end










