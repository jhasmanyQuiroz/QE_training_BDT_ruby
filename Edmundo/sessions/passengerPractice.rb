def passenger(destination = "cbba")
    puts "Enter name:"
    name = gets.chomp

    puts "Enter ticket cost in bolivians:"
    ticket = gets.chomp.to_f

    dollar_rate = 6.96

    "The passenger #{name} has a ticket to #{destination} city and cost #{ticket/dollar_rate} USD"
end

puts passenger