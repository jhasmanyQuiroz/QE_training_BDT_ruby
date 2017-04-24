class CustomArray
    def initialize 
        @numericArray = []
        @alphabeticalArray = []
        @mixedArray = [] 
    end

	def arraylength
        puts("Please insert the number of elements in the array")
        num = gets.chomp.to_i
		@arraylength = num
		puts("The length of the array is #{@arraylength}")
	end

	def askUser
		@arraylength.times do | value_1 |  
		puts("Please insert an number to include inside the numeric array")
		element = gets.chomp.to_i 
		@numericArray.push(element)

        puts("Please insert an alphabetic character to include inside the alphabetic array")
		element = gets.chomp
		@alphabeticalArray.push(element)

        puts("Please insert an number or alphabetic character to include inside the mixed array")
		element = gets.chomp
		@mixedArray.push(element)
		end 

		return @numericArray, @alphabeticalArray, @mixedArray
	end

	def printElements(*args)
		p args
	end

    def printCommonFirstLast(array1, array2)
    	puts("The common elements of both arrays is #{array1 & array2}")
    	puts("The first element of the first array is #{array1.first} " +
    	     "The first element of the second array is #{array2.first}")
    	puts("The last element of the first array is #{array1.last} " + 
    		 "The last element of the second array is #{array2.last}")  	
    end

    def printJoinArrays(array1, array2)
    	firstEl = array1.shift
    	lastEl = array2.pop

        puts("Joing both arrays #{array1.inspect} and #{array2.inspect} the result is #{array1 & array2}")   
        newArray = [firstEl, lastEl]
        return newArray
    end


end


customA = CustomArray.new

customA.arraylength

array1, array2, array3 = customA.askUser

customA.printElements(array1, array2, array3) 

newArray = customA.printJoinArrays([2,3,4], [2,4,5])

customA.printElements(newArray)










