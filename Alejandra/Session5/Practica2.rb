require_relative "folder/ruby_file"
class Class1
	include Mod1
	include Mod2
end
class1 = Class1.new
class1.greet1
class1.greet4


# Module

module Mod1
	def Mod1.greet1
		puts "Hi friend"
	end
	def Mod1.greet2
		puts "Goof night"
	end
	def Mod1.greet3
		puts "Goof afternoon"
	end
end

module Mod2
	def Mod2.greet4
		puts "Good Bye"
	end
	def Mod2.greet5
		puts "See you later"
	end
	def Mod2.greet6
		puts "Take care"
	end
end

Mod1.greet1
Mod2.greet4