value_1 = 10
5.times {| value_1 | puts " value_1 inside the block: #{value_1 }"}

puts " value_1 outside the block: #{value_1 }"


[1,"2",3.0].length.times.count {|a| puts a}
