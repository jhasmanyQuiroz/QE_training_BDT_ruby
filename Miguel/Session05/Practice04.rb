=begin
1. Write a module that print different type of greets (Hi Friend, good night,
   good afternoon, etc )
2. Write another module that print different ways to say bye (good bye, see you
   later, take care, etc)
3. Include both modules in a class
4. Print the different greeters using an instance of the class and calling to
   the module methods.
5. Move the modules to another file and include them adding the line :
	     require_relative "folder/ruby_file"

Implement Mixin and Library concept
=end

module Greets
  def hello
    puts "Hello"
  end
  def goodMorning
    puts "Good Morning"
  end
  def goodAfternon
    puts "Good Afternon"
  end
end

module GoodByes
  def bye
    puts "Bye"
  end
  def goodNight
    puts "Good Night"
  end
  def seeYou
    puts "See you"
  end
end

class GreetingsAndGoodbyes
  include Greets
  include GoodByes
end

GreetingsAndGoodbyes.new.hello
GreetingsAndGoodbyes.new.goodMorning
GreetingsAndGoodbyes.new.goodAfternon
GreetingsAndGoodbyes.new.bye
GreetingsAndGoodbyes.new.seeYou
GreetingsAndGoodbyes.new.goodNight
