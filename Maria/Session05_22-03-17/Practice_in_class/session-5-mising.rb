#module Greets   # A module does not use variables, only contants and methods
#	def say_Hello
#		puts "Hi friend"	
#	end
#	def say_good_night
#		puts "Good night"
#	end
#	def say_good_affternoon
#		puts "Good afternoon"
#	end
#end

#module SayBye
#	def say_good_bye
#		puts "Good bye"
#	end
#	def say_see_you_later
#		puts "See you later"
#	end
#	def say_take_care
#		puts "Take care"
#	end
#end
require_relative "session-5-modules-library"
class Greeters
	
		include Greets
		include SayBye
end

greeter = Greeters.new
greeter.say_Hello
greeter.say_good_affternoon
greeter.say_good_night
greeter.say_take_care
greeter.say_good_bye
