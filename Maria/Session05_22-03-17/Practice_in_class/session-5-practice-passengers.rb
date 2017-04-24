def passegers_tickets(name, destination="CBBA", price)
	puts "Passenger #{name}"
	puts "Destination #{destination}"
	puts calculate_price_to_dollars(price)
end

def calculate_price_to_dollars(price)
	price_in_dollars = price * 6.99
end

passegers_tickets "Maria", 15.0
passegers_tickets "Edmundo", "LA PAZ", 35.0