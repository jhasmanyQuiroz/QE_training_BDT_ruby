def method1
	array = Array.new
	puts "Size of array: "
	size =  gets.chomp.to_i
	begin 
		puts "Get a parameter: "
		var = gets.chomp
		array.push(var)
	end while array.length < size
	array
end

def method2 array
	puts "First element: #{array.first}"
end

def method3 array
	puts "Last element: #{array.last}"
end

def method4 array1, array2
	puts "Common elements: #{array1 & array2}"
end

array = method1
method2 (array)
method3 (array)

array1 = method1
array2 = method1
method4 array1, array2