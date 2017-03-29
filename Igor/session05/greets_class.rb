=begin 
Write a module that print different type of greets (Hi Friend, good night, good afternoon, etc ) 
Write another module that print different ways to say bye (good bye, see you later, take care, etc)
Include both modules in a class
Print the different greeters using an instance of the class and calling to the module methods.
=end

module GreetsArrive
   def greet_formal time = "Morning"
   	puts "Good #{time}"
   end
   def greet_friendly
   	puts "Hi Friend!"
   end
   def greet_regular
   	puts "Hello"
   end   
end
module GreetsLeave
   def leave_formal
   	puts "Good bye, It was nice to see you"
   end
   def leave_familiar
   	puts "bye, see you later"
   end
   def leave_regular
   	puts "bye bye"
   end 
end

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

