=begin 
Move the modules to another file and include them adding the line :
	     require_relative "folder/ruby_file" 

Implement Mixin and Library concept

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