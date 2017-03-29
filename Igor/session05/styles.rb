
=begin 
Let’s consider you are in a new team :
Define which code guideline you would suggest for :
Format (int, float, string)
Classes
Methods
Variables, Getter/Setter
If condition
Please Add your suggestion and define one example for each one.

=end


=begin
the best approach is to use one of the already predifened code style conventions for Ruby for example:
https://github.com/bbatsov/ruby-style-guide

so we can use a ruby code inspector according to the style like:
http://roodi.rubyforge.org/

Format (int, float, string)
int:   conver to Int as soon as we know that a string should be an Integer
float: conver to float as soon as we know that a string should be an float, perform rounding only on the last steps
string: Prefer string interpolation and string formatting instead of string concatenation
	Prefer double-quotes unless your string literal contains " or escape characters you want to suppress


Classes
Should start with upercase

Methods
Should not content a upercase character 

Variables, Getter/Setter
Use the attr family of functions to define trivial accessors or mutators
Avoid the use of attr(it is deprecated). Use attr_reader and attr_accessor instead

If condition
take look to ifs inside other ifs the max Cyclomatic Complexity should be 4
=end

#Classes, Methods, Variables, Getter/Setter
class Person
  # extend and include go first
  extend SomeModule
  include AnotherModule

  # inner classes
  CustomError = Class.new(StandardError)

  # constants are next
  SOME_CONSTANT = 20

  # afterwards we have attribute macros
  attr_reader :name

  # followed by other macros (if any)
  validates :name

  # public class methods are next in line
  def self.some_method
  end

  # initialization goes between class methods and other instance methods
  def initialize
  end

  # followed by other public instance methods
  def some_method
  end

  # protected and private methods are grouped near the end
  protected

  def some_protected_method
  end

  private

  def some_private_method
  end
end


#Format (int, float, string)
@born_year = gets.chomp.to_i #conver to int since it will be used later in operations
@salary = gets.chomp.to_f #conver to float since it will be used later in operations
# bad
name = user.name + ' <' + user.last_name + '>'
# good
name = "#{user.name} <#{user.last_name}>"


#if condition
# bad, it has a high Cyclomatic Complexity
if something
  if something_else
    if other
       if example?
       else
         if last
	   body 
	 end
	end
    end	
  end
end
