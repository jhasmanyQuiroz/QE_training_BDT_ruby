def method_block
    $result = 0
    yield
    puts "the value is #{$result}"
end

method_block { $result = 15 * 25 }

method_block do
    $result = $result == 0? 25+15:25+5
    puts "changed the value into the block expected #{$result}"
    ##
end

method_block { $result = 15 / 20.0 }





