#a = 4
#puts a = 7 if a == 4
def customer_id(name, customer_id)
	puts "Hi #{name.upcase}"
#	message = customer_id > 100 ? "Thaks to be our customer": "Thanks"
	customer_id > 100 ? puts("Thanks to be our customer"): puts("Thanks")
	#Recommender to short-if in puts use '()'
#	puts message
end

customer_id("Maria", 25)
customer_id "juan", 105
