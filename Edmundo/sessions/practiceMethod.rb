def customer_id(name, customer_id)
    print "Hi #{name.upcase}, "
    customer_id > 100 ? puts("Thanks to be customer more than 100") : puts("thanks")
end
customer_id "maria", 20
customer_id("ed", 200)