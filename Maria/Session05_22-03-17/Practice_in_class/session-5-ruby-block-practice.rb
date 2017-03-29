#$result = 0     ####Define a global variable y hacer la prueba para ver que cambia el valor de resultt
def method_block
	##some code
	$result = 0
	yield
	puts "The value obtained is #{$result}"
end
method_block {$result = 15 *25}

method_block do
$result = $result==0? 25+15:25*5
puts "I changed the value into the block"
## any other code  that you would like to introduce into the method
end
method_block {$result = 15 /25}
