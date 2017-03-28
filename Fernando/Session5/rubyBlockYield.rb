$globalVariable = 5

def method_block
    $globalVariable = 2 
	yield 
	puts "The value obtained is #{$globalVariable}"
end


method_block do 
	$globalVariable = $globalVariable == 0 ? 25+45 : 45 
	puts "I changed the value into the block"
end

method_block { $globalVariable = 100/3}