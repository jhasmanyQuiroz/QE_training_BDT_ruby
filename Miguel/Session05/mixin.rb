=begin
1. Write a module that print different type of greets (Hi Friend, good night, good afternoon, etc )
2. Write another module that print different ways to say bye (good bye, see you later, take care, etc)
Include both modules in a class
Print the different greeters using an instance of the class and calling to the module methods.
Move the modules to another file and include them adding the line :
	     require_relative "folder/ruby_file"

Implement Mixin and Library concept
=end

module Greets
  def Greets.hello
    puts "Hello"
  end
  def Greets.goodMorning
    puts "Good Morning"
  end
  def Greets.goodAfternon
    puts "Good Afternon"
  end
end

module Bye
  def Greets.hello
    puts "Hello"
  end
  def Greets.goodMorning
    puts "Good Morning"
  end
  def Greets.goodAfternon
    puts "Good Afternon"
  end
end
