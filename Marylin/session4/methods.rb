def customer_id(name, customer_id)
	message = customer_id > 100 ? "Thanks to be our customer." : "Thanks."

	puts "Hi #{name}"
	puts "You are our customer #{customer_id}. " + message
end



#customer_id("mary".upcase(), 101)
#customer_id("mary".upcase(), 90)

customer_id "mary".upcase(), 101
customer_id "mary".upcase(), 90