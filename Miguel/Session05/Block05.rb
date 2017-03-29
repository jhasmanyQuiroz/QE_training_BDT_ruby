=begin
Research how to call to a block with parameters using the Yield statement.
Please give an example of it.
=end

def operations(a,b)
  result = yield(a,b)
  puts "input a: #{a}"
  puts "input b: #{b}"
  puts "output result: #{result}"
end

operations(1,2) {|a,b| a+b}
