=begin
1. Create a class with two methods
	method 1:
	No arguments defined
	Should ask to the user the number of elements in the array
	According the value inserted ask for each value of the array and push it in a new array
	Return the array
	method 2
	Should receive 1 argument (the array returned in method 1)
	should print the array
=end

class CustomArray
    def initialize 
        @arrayElements=[]
    end

	def arraylength
        puts("Please insert the number of elements in the array")
        num = gets.chomp.to_i
		@arraylength = num
		puts("The length of the array is #{@arraylength}")
	end

	def askUser
		@arraylength.times do | value_1 |  
		puts("Please insert the element to include inside the array")
		element = gets.chomp 
		@arrayElements.push(element)
		end 
		return @arrayElements
	end

	def printElements(arrayEl)
		p arrayEl
	end
end

customA = CustomArray.new

customA.arraylength

arrayEl = customA.askUser

customA.printElements(arrayEl) 


