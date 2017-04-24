# def test_block(x)
#     puts "method"
#     puts "x " + x
#     # yield
#     puts "method"
#     puts "x " + x
#     # yield
# end

# test_block("asdf") do puts "block" end

value_1 = 10
5.times do |x |
    value_1 = x
    puts "value_1 inside the block: #{value_1} "
end

    puts "value_1 outside the block: #{value_1} "
