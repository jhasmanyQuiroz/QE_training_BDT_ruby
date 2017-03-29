def test_block
   a=5
   puts "You are in the method"
   yield
   puts "You are again back to the method"
   yield
   puts a
end

test_block {puts a=6}
