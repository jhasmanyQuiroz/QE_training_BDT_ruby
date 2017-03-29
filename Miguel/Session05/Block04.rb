=begin
Create a method using the yield statement, so that you can perform an
operation(sum, product,etc) into the block and you will modify a local
variable into the block and you will print that value into the method but
outside the block.
=end

def method_block
  result=0
  result=yield
  puts "The value obtained is #{result}"
end

method_block {result = 15 *25}
method_block {result = 15 /25}

method_block do
  result = result==0? 25+15:25*5
  puts "I changed the value into the block"
end
