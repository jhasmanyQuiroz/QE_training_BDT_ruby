value_1 = 10
5.times do | value_1 |
puts " value_1 inside the block: #{value_1 }"
end

puts " value_1 outside the block: #{value_1 }"


value_2 = 20
5.times {|x| puts " value_1 inside the block: #{value_2}" }

puts " value_2 outside the block: #{value_2 }"
