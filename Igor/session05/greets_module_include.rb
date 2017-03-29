=begin 
Move the modules to another file and include them adding the line :
	     require_relative "folder/ruby_file" 

Implement Mixin and Library concept

=end

require_relative "greets_module.rb" 

class Greeting
include GreetsArrive
include GreetsLeave
end

mixin=Greeting.new
mixin.greet_formal
mixin.greet_formal("Afternoon")
mixin.greet_regular
mixin.leave_formal
mixin.leave_regular
mixin.leave_familiar
mixin.greet_friendly

