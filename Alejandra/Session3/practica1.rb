$user_name
$age
class Class1
	def setData name, age
		$user_name = name
		$age = age
	end 
end
class Class2
	def age_min
		puts "Hi #{$user_name}, your age in minutes is #{$age * 365 * 24 * 60}"
	end 
end

puts "Get name: "
name = gets.chomp
puts "Get age: "
age = gets.chomp.to_i

Class1.new().setData(name, age)
Class2.new().age_min