def customer_id(name, customer_id)
	customer_id > 100 ? message = "Thanks to be our customer" : message = "Thanks"
	name_in_uppercase = name.upcase

	puts "Hi #{name_in_uppercase}"
	puts "You are our customer #{customer_id}, #{message}"
end

customer_id"Melissa", 14