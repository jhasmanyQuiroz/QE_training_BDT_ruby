=begin
Ruby Singleton
=end
def singletn_example
	@singletn_example ||= Custom.new
end
class Custom
	attr_accessor :visitors

	def initialize
		@visitors = 0
		@my_hash = Hash.new
	end
	def add_to_hash user, message
		@my_hash.store user, message
		@visitors += 1
	end
	def print_last_user
		p @my_hash.map {|key, value| key}.last
	end
end

singletn_example.add_to_hash "paco", "bienvenido"
singletn_example.add_to_hash "pepe", "Wilc"
singletn_example.add_to_hash "luis", "Welcooome"
singletn_example.add_to_hash "hugo", "hola"
singletn_example.print_last_user
p singletn_example.visitors